//
//  DataManager.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "DataManager.h"

@interface DataManager()

-(NSArray *) parseJson:(NSArray *) data;

@end


@implementation DataManager

-(NSArray *)downloadData {
    NSArray *json = [[NSArray alloc]init];
    
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

-(NSArray *) parseJson:(NSArray *)jsonData  {
    NSMutableArray *finalData = [[NSMutableArray alloc] init];
    
    for (NSDictionary *data in jsonData) {
        
        self.totalPosts = (int)[data objectForKey:@"count"];
        

    }
    
    
    return finalData;
}

@end
