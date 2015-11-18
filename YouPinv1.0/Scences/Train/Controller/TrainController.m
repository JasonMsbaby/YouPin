//
//  TrainController.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "TrainController.h"
#import "TrainReusableView.h"
#import "TrainCell.h"
#import "LoginController.h"
@interface TrainController () <UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UICollectionView *collectionView;
@property(nonatomic,strong) UICollectionViewFlowLayout *flowLayout;
@end

@implementation TrainController
#pragma viewLifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self initSubViews];
}
#pragma mark - init
/**
 *  初始化数据
 */
- (void)initData{
    
}
/**
 *  初始化子视图
 */
- (void)initSubViews{
    self.flowLayout = [[UICollectionViewFlowLayout alloc]init];
    self.flowLayout.itemSize = CGSizeMake((ScreenWidth-30)/2, (ScreenWidth-30)/2);
    self.flowLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    self.flowLayout.headerReferenceSize = CGSizeMake(ScreenWidth, 200);
    self.collectionView = [[UICollectionView alloc]initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:self.flowLayout];
    self.collectionView.backgroundColor = [UIColor redColor];
    [self.collectionView registerClass:[TrainCell class] forCellWithReuseIdentifier:@"cell"];
    [self.collectionView registerClass:[TrainReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusable"];
    [self.view addSubview:self.collectionView];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    [self presentViewController:[LoginController new] animated:YES completion:nil];
    
}
#pragma mark - action

#pragma mark - delegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TrainCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    TrainReusableView *reusable = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusable" forIndexPath:indexPath];
    reusable.backgroundColor = [UIColor yellowColor];
    return reusable;
}

#pragma mark - other
@end
