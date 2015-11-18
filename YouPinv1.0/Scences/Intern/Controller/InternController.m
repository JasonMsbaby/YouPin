//
//  InternController.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "InternController.h"
#import "Constants.h"
#import "InternViewCell.h"
#import "internReusableView.h"
#import "StudetViewController.h"

@interface InternController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView * collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout * flowLayout;

@end


@implementation InternController


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setSubViews];
    
}
//初始化子视图
-(void)setSubViews
{
    //初始化floflayout并设置itemsize的大小
    self.flowLayout = [UICollectionViewFlowLayout new];
    self.flowLayout.itemSize = CGSizeMake((ScreenWidth - 75) / 2, (ScreenWidth - 75) / 2);
    self.flowLayout.headerReferenceSize = CGSizeMake(ScreenWidth, (ScreenHeight - 77) / 4);
    //设置cell距离上下左右的距离
    self.flowLayout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 30);
    //初始化collectionView
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:self.flowLayout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    //设置代理
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    [self.view addSubview:self.collectionView];
    
    //注册cell
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];

    [self.collectionView registerClass:[InternViewCell class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusable"];
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"城市" style:UIBarButtonItemStylePlain target:self action:@selector(ClickBarButtonAction)];
    
    
    
    
    
}

//BarButtonItem点击事件
-(void)ClickBarButtonAction
{
    
}




-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor orangeColor];
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView * reusable = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusable" forIndexPath:indexPath];
    
    reusable.backgroundColor = [UIColor cyanColor];
    
    return reusable;
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    StudetViewController * studentVC = [StudetViewController new];
    
    [self.navigationController pushViewController:studentVC animated:YES];
    
}










@end
