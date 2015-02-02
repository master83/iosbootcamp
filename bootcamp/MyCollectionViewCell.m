//
//  MyCollectionViewCell.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

-(void) LoadCell:(NSString *)title withSubTitle:(NSString *)subTitle withLeftImage:(NSString *)leftImage withRightImage:(NSString *)rightImage {
    self.titleLabel.text = title;
//    self.titleLabel.font = [UIFont fontWithName:@"font1.ttf" size:16];
    self.titleLabel.font = [UIFont fontWithName:@"Waltograph" size:16.0f];
    self.subTitleLabel.text = subTitle;
//    self.subTitleLabel.font = [UIFont fontWithName:@"font2.otf" size:12];
    
    
    self.leftImageView.image = [UIImage imageNamed:leftImage];
    self.rightImageView.image = [UIImage imageNamed:rightImage];
}

@end
