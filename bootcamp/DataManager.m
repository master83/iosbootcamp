//
//  DataManager.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "DataManager.h"
#import "BlogCellItem.h"

@interface DataManager()

-(NSArray *) parseJson:(NSDictionary *) data;

@end


@implementation DataManager

-(NSArray *)downloadData {
    NSDictionary *json = [[NSDictionary alloc]init];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://data.nasa.gov/api/get_search_results/?search=carbon+cycle"]];
    
//    __block NSDictionary *data;
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//        json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        
//        NSLog(@"Async JSON: %@", json);
//    }];
    
//    [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    
    NSData *theData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    json = [NSJSONSerialization JSONObjectWithData:theData options:kNilOptions error:nil];
    
    return [self parseJson:json];
}

-(NSArray *) parseJson:(NSDictionary *)jsonData  {
    NSMutableArray *finalData = [[NSMutableArray alloc] init];
    
    self.totalPosts = (int)[jsonData objectForKey:@"count"];
    
    for (NSDictionary *data in jsonData) {
        
        NSArray *posts = [data objectForKey:@"posts"];
        
        if (posts.count > 0) {
            
            for (NSDictionary *post in posts) {
                
                BlogCellItem *blogCell = [[BlogCellItem alloc] init];
                blogCell.title = [post objectForKey:@"title"];
                
                NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                [dateFormatter setDateFormat:@"EE, d LLLL yyyy HH:mm:ss Z"];
                
                blogCell.blogDate = [dateFormatter dateFromString:[post objectForKey:@"date"]];
                blogCell.content = [post objectForKey:@"content"];
                
                NSArray *tags = [post objectForKey:@"tags"];
                if (tags.count > 0) {
                    NSMutableArray *tags = [[NSMutableArray alloc] init];
                    for (NSDictionary *tag in tags) {
                        [tags addObject:[tag objectForKey:@"key"]];
                    }
                    blogCell.tags = tags;
                }
                
                NSDictionary *author = [[NSDictionary alloc] init];
                author = [post objectForKey:@"author"];
                
                if (author) {
                    blogCell.authorName = [author objectForKey:@"name"];
                    blogCell.authorDescription = [author objectForKey:@"description"];
                }
                
                [finalData addObject:blogCell];
                
            }
            
        }
        
    }
    
    
    return finalData;
}

@end
