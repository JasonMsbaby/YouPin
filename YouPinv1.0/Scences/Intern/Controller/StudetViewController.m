//
//  StudetViewController.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "StudetViewController.h"
#import "StudentViewCell.h"
#import "YPSchool+YPSchoolCategory.h"

@interface StudetViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)UITableView * tableView;

@end

@implementation StudetViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"实训生";
    [self setSubView];
}

-(void)setSubView
{
    //初始化列表视图
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[StudentViewCell class] forCellReuseIdentifier:@"cell"];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString * string = @"XXX老师推荐学生";
    return string;
}



@end
