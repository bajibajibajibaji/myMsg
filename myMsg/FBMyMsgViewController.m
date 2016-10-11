//
//  FBMyMsgViewController.m
//  myMsg
//
//  Created by cc on 16/8/18.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "FBMyMsgViewController.h"
#import "FBMyMsgTableViewCell.h"
#import "constant.h"

@interface FBMyMsgViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation FBMyMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    WS(ws);
    
    self.title = @"我的消息";
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = [UIColor colorWithRed:35.0f/255.0f green:205.0f/255.0f blue:250.0f/255.0f alpha:1.0f];
    
    self.tableView =[[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@(SCREEN_WIDTH));
        make.centerX.mas_equalTo(ws.view);
        make.top.mas_equalTo(ws.view).offset(64+10*RATIO_V);
        make.bottom.mas_equalTo(ws.view);
    }];
}

#pragma mark ---------------------UITableViewDataSource------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [FBMyMsgTableViewCell cellWithTableView:tableView];
}

#pragma mark ---------------------UITableViewDelegate------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"o ye");
}


@end
