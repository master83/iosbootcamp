//
//  BlogCellItem.h
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogCellItem : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSDate *blogDate;
@property (strong, nonatomic) NSString *authorName;
@property (strong, nonatomic) NSString *blogDescription;
@property (strong, nonatomic) NSArray *tags;

@end
