//
//  PostsCollectionViewCell.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "PostsCollectionViewCell.h"

@implementation PostsCollectionViewCell

-(void) LoadCell:(NSString *)title withDate:(NSString *)date withContent:(NSString *)content withAuthor:(NSString *)author withDescription:(NSString *)description withTags:(NSArray *)tags {
    
    self.titleLabel.text = title;
    self.dateLabel.text = date;
    self.contentLabel.text = content;
    self.authorLabel.text = author;
    self.descriptionLabel.text = description;
    self.tagsLabel.text = tags.description;
    
}

@end
