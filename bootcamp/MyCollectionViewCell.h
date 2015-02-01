//
//  MyCollectionViewCell.h
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subTitleLabel;

-(void) LoadCell:(NSString *)title withSubTitle:(NSString *)subTitle;
@end
