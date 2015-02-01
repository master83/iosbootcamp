//
//  MyCollectionViewCell.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

-(void) LoadCell:(NSString *)title withSubTitle:(NSString *)subTitle {
    self.titleLabel.text = title;
    self.subTitleLabel.text = subTitle;
}

@end
