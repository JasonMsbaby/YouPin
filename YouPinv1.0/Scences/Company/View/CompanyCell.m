//
//  CompanyCell.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "CompanyCell.h"
#import <Masonry.h>
@implementation CompanyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupSubViews];
    }
    return self;
}




// 加载视图
- (void)setupSubViews{
    // 公司logo
    UIImageView *companyImageView = [[UIImageView alloc]initWithImage:nil];
    companyImageView.backgroundColor = [UIColor yellowColor];
    [self addSubview:companyImageView];
    
    [companyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        // 设置公司logo距离cell上部高度
        make.top.equalTo(self).offset(20);
        // 设置公司logo距离cell左边高度
        make.left.equalTo(self).offset(20);
        // 设置公司logo距离cell底部高度
        // 设置公司logo宽高比为1：1
        make.bottom.equalTo(self).offset(20);
        make.width.equalTo (companyImageView.mas_height).multipliedBy(1);
    }];
    
    // 公司名称
    UILabel *companyNameLabel = [[UILabel alloc]init];
    // 设置公司名称label背景颜色
    companyNameLabel.backgroundColor = [UIColor greenColor];
    [self addSubview:companyNameLabel];
    
    [companyNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).with.offset (20);
        make.left.equalTo(companyImageView.mas_right).offset(20);
        make.right.equalTo(self).with.offset (-20);
        make.height.equalTo(@20);
    }];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end
