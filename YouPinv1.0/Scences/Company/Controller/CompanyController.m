//
//  CompanyController.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "CompanyController.h"
#import "CompanyCell.h"
#import "TabelViewHeadView.h"
#import "CompanyDitailController.h"
#define tabelViewHeadViewColor [UIColor redColor]

@interface CompanyController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *sourceArray;
@end

@implementation CompanyController
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
    // 添加代理和数据源
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    // 注册cell
    [self.tableView registerClass:[CompanyCell class] forCellReuseIdentifier:@"cell"];
    
    
    

    
    // 导航栏左边添加城市按钮
    self.navigationItem.leftBarButtonItem  = [[UIBarButtonItem alloc]initWithTitle:@"城市" style:UIBarButtonItemStylePlain target:self action:@selector(didClickLeftBarButtonItem:)];
    
//    // 初始化头视图
//    self.tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
//    self.tableView.tableHeaderView.backgroundColor = tabelViewHeadViewColor;
    
    [self.view addSubview:self.tableView];
 
}
#pragma mark - action
- (void)didClickLeftBarButtonItem:(UIBarButtonItem *)barButtonItem{
    
}

#pragma mark - delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // 返回的个数为数据源数组的个数
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 设置cell
    CompanyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    UIView *companyHeadView = [[[UINib nibWithNibName:@"CompanyHeader" bundle:[NSBundle mainBundle]] instantiateWithOwner:self options:nil]lastObject];
    UIView *companyHeadView = [[TabelViewHeadView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    companyHeadView.backgroundColor = tabelViewHeadViewColor;
    return companyHeadView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 200;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CompanyDitailController *companyDetailVC = [[CompanyDitailController alloc]init];
    [self.navigationController pushViewController:companyDetailVC animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 130;
}
#pragma mark - other

@end
