//
//  ViewController.m
//  bootcamp
//
//  Created by Rahul on 1/28/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCell.h"

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
    
    [self.items addObject:@"Apple"];
    [self.items addObject:@"Banana"];
    [self.items addObject:@"Chicken"];
    [self.items addObject:@"Grapes"];
    [self.items addObject:@"Lemon "];
    [self.items addObject:@":)"];
    
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
    
    NSString *title = self.items[indexPath.row];
    
    MyCollectionViewCell *cell = (MyCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    [cell LoadCell:title withSubTitle:title];
    
    
    return cell;
}

@end
