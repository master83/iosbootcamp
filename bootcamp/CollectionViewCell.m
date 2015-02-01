//
//  CollectionViewCell.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

-(void)LoadTitle:(NSString *)title {
    [titleLabel setText:title];
}

-(void)LoadSubTitle:(NSString *)subTitle {
    [subTitleLabel setText:subTitle];
}

@end
