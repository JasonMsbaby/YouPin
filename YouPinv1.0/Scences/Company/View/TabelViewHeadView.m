//
//  TabelViewHeadView.m
//  YouPinv1.0
//
//  Created by lanou3g on 15/11/18.
//  Copyright © 2015年 张杰. All rights reserved.
//

#import "TabelViewHeadView.h"
#import <Masonry.h>
@implementation TabelViewHeadView
// 初始化
- (instancetype)initWithFrame:(CGRect)frame{
    if (self) {
        self = [super initWithFrame:frame];
        [self setupSubViews];
    }
    return self;
}
#pragma mark - 加载视图
- (void)setupSubViews{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.backgroundColor = [UIColor yellowColor];
    button1.layer.cornerRadius = 15;
    button1.clipsToBounds = YES;
    [self addSubview:button1];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(20);
        make.top.equalTo(self).with.offset(20);
        make.height.equalTo(@30);
        make.width.equalTo(@60);
    }];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.backgroundColor = [UIColor yellowColor];
    button2.layer.cornerRadius = 15;
    button2.clipsToBounds = YES;
    [self addSubview:button2];
    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(button1.mas_right).offset (20);
        make.top.equalTo(self).with.offset (20);
        make.height.equalTo(@30);
        make.width.equalTo(@60);
    }];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    button3.backgroundColor = [UIColor yellowColor];
    button3.layer.cornerRadius = 15;
    button3.clipsToBounds = YES;
    [self addSubview:button3];
    [button3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(button2.mas_right).offset (20);
        make.top.equalTo(self).with.offset (20);
        make.height.equalTo(@30);
        make.width.equalTo(@60);
    }];
}
@end
