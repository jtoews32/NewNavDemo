//
//  CollectionViewController.m90
//  NewNavDemo
//
//  Created by Jon Toews on 9/18/15.
//  Copyright © 2015 David Rowland. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CollectionViewController.h"
#import "CollectionViewCell.h"

@interface CollectionViewController()

@property (strong, nonatomic) UICollectionView *collectionVie;

@end




@implementation CollectionViewController 


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCollectionView];
}

-(void) setupCollectionView  {
    UICollectionViewFlowLayout *layout= [[UICollectionViewFlowLayout alloc] init];
    
    self.collectionVie = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    [self.collectionVie setDataSource:self];
    [self.collectionVie setDelegate:self];
    
    [self.collectionVie registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    [self.collectionVie setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:self.collectionVie];
}



#pragma mark - Collection View Data Sources


// Optional and defaults as 1, but I always include it anyways for clarity.
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 36;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    //cell.backgroundColor=[UIColor greenColor];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((self.view.frame.size.width-100)/2, 100);
}





#pragma mark – UICollectionViewDelegateFlowLayout

/*
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
 
    CGSize retVal = CGSizeMake(50, 50);
    return retVal;
}*/

// 3
- (UIEdgeInsets)collectionView: (UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(50, 20, 50, 20);
}




@end