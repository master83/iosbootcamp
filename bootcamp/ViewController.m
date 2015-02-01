//
//  ViewController.m
//  bootcamp
//
//  Created by Rahul on 1/28/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {

    NSMutableArray *items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    items = [[NSMutableArray alloc]init];
    
    [items addObject:@"Apple"];
    [items addObject:@"Banana"];
    [items addObject:@"Chicken"];
    [items addObject:@"Grapes"];
    [items addObject:@"Lemon "];
    [items addObject:@":)"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Collection View Methods
- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Don't know why this line gives error
//    return [collectionView numberOfSections];
    
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *label = (UILabel *)[cell viewWithTag:100];
    label.text = [items objectAtIndex:indexPath.row];
    
    return cell;
}

@end
