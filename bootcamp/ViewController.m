//
//  ViewController.m
//  bootcamp
//
//  Created by Rahul on 1/28/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCell.h"
#import "CellItem.h"

@interface ViewController ()
    @property (strong, nonatomic) IBOutlet NSMutableArray *items;
    @property (strong, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end

@implementation ViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.items = [[NSMutableArray alloc]init];
    
    [self.myCollectionView setDataSource:self];
    [self.myCollectionView setDelegate:self];
    
    CellItem *item1 = [[CellItem alloc] init];
    [item1 setTitle:@"Apple"];
    [item1 setSubTitle:@"Good for Health"];
    [item1 setLeftImagePath:@"apple"];
    [item1 setRightImagePath:@"apple1"];
    
    CellItem *item2 = [[CellItem alloc] init];
    [item2 setTitle:@"Grapes"];
    [item2 setSubTitle:@"Good for Health"];
    [item2 setLeftImagePath:@"grapes"];
    [item2 setRightImagePath:@"grapes"];
    
    CellItem *item3 = [[CellItem alloc] init];
    [item3 setTitle:@"Chicken"];
    [item3 setSubTitle:@"Good for Health"];
    [item3 setLeftImagePath:@"chicken"];
    [item3 setRightImagePath:@"chicken1"];
    
    CellItem *item4 = [[CellItem alloc] init];
    [item4 setTitle:@"Peach"];
    [item4 setSubTitle:@"Good for Health"];
    [item4 setLeftImagePath:@"peach"];
    [item4 setRightImagePath:@"peach1"];
    
    [self.items addObject:item1];
    [self.items addObject:item2];
    [self.items addObject:item3];
    [self.items addObject:item4];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Collection View Methods
- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CellItem *cellItem = (CellItem *)self.items[indexPath.row];
    
    MyCollectionViewCell *cell = (MyCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    [cell LoadCell:cellItem.title withSubTitle:cellItem.subTitle withLeftImage:cellItem.leftImagePath withRightImage:cellItem.rightImagePath];
    
    CALayer *cellLayer = cell.layer;
    [cellLayer setBorderWidth:2.0f];
    
    return cell;
}

@end
