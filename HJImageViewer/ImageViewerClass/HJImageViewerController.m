//
//  HJImageViewerController.m
//  HJImageViewer
//
//  Created by WHJ on 2018/2/6.
//  Copyright © 2018年 WHJ. All rights reserved.
//

#import "HJImageViewerController.h"

@interface HJImageViewerController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;

/** <#describe#> */
@property (nonatomic, strong) NSArray *images;

@end

static NSString * const kCollectionViewCellID = @"CollectionViewCellID";

@implementation HJImageViewerController

#pragma mark - Life Circle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - About UI
- (void)setupUI{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = self.view.bounds.size;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kCollectionViewCellID];
    [self.view addSubview:collectionView];
}

#pragma mark - Request Data

#pragma mark - Pravite Method

#pragma mark - Public Method

#pragma mark - Event response

#pragma mark - Delegate methods
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;{
    return 50;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;{
    return 1;
}

#pragma mark - UICollectionViewDelegateFlowLayout

#pragma mark - Getters/Setters/Lazy

@end
