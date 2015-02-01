//
//  CollectionViewCell.h
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell {
    
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *subTitleLabel;
    
}

-(void) LoadTitle:(NSString *)title;
-(void) LoadSubTitle:(NSString *)subTitle;

@end
