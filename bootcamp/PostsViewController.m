//
//  PostsViewController.m
//  bootcamp
//
//  Created by Rahul on 2/1/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "PostsViewController.h"
#import "DataManager.h"
#import "PostsCollectionViewCell.h"
#import "BlogCellItem.h"

@interface PostsViewController ()<DataManagerDelegate>

@property (strong, nonatomic) IBOutlet NSArray *posts;
@property (strong, nonatomic) IBOutlet UICollectionView *postsCollectionView;
@property (strong, nonatomic) DataManager *dataManager;

@end

@implementation PostsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.posts = [[NSArray alloc] init];
    
    [self.postsCollectionView setDataSource:self];
    [self.postsCollectionView setDelegate:self];
    
    self.dataManager = [[DataManager alloc] init];
    self.dataManager.dataManagerDelegate = self;
    [self.dataManager downloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma Collection View Methods

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.posts.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    BlogCellItem *blogCell = (BlogCellItem *)self.posts[indexPath.row];
    
    PostsCollectionViewCell *postCell = (PostsCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    [postCell LoadCell:blogCell.title withDate:blogCell.blogDate withContent:blogCell.content withAuthor:blogCell.authorName withDescription:blogCell.authorDescription withTags:blogCell.tags];
    
    return postCell;
    
}

#pragma mark - DataManager Delegate
- (void)dataFinishedDownloading:(NSArray *)data {
    self.posts = data;
    [self.postsCollectionView reloadData];
}

@end
