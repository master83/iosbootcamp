//
//  DataManager.h
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataManagerDelegate <NSObject>

//-(NSArray *) finalData;
-(void) dataFinishedDownloading:(NSArray *)data;

@end

@interface DataManager : NSObject

@property (nonatomic, weak) id<DataManagerDelegate> dataManagerDelegate;
@property int totalPosts;
-(void)downloadData;

@end
