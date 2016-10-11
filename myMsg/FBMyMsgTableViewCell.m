//
//  FBMyMsgTableViewCell.m
//  myMsg
//
//  Created by cc on 16/8/18.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "FBMyMsgTableViewCell.h"
#import "constant.h"

@interface FBMyMsgTableViewCell ()

@property (strong, nonatomic) UIImageView *msgStyleImageView;
@property (strong, nonatomic) UILabel     *msgLabel;
@property (strong, nonatomic) UIImageView *indicatorImageView;

@end

@implementation FBMyMsgTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    FBMyMsgTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mymsgcell"];
    if (cell == nil) {
        cell = [[FBMyMsgTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"mymsgcell"];
        
        [cell subInitLayout];
    }
    
    return cell;
}

- (void)subInitLayout
{
    WS(ws);
    
    self.msgStyleImageView = imageViewOfAutoScaleImage(@"d7 Drift.png");
    
    self.indicatorImageView = imageViewOfAutoScaleImage(@"Jump nearby.png");
    
    self.msgLabel = [[UILabel alloc] init];
    self.msgLabel.textAlignment = NSTextAlignmentLeft;
    self.msgLabel.numberOfLines = 1;
    self.msgLabel.font = [UIFont boldSystemFontOfSize:14];
    self.msgLabel.textColor = [UIColor colorWithRed:0.0 green:80.0/255 blue:100.0/255 alpha:1.0];
    self.msgLabel.text = @"哇哇哇哇啊哇安慰啊安慰啊啊啊dfjldkjfdklfjdkl";
    
    [self.contentView addSubview:self.msgStyleImageView];
    [self.msgStyleImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(30, 30));
        make.left.mas_equalTo(ws.contentView).offset(20);
        make.top.mas_equalTo(ws.contentView);
    }];
    
    [self.contentView addSubview:self.indicatorImageView];
    [self.indicatorImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(6, 13));
        make.centerY.mas_equalTo(ws.msgStyleImageView);
        make.right.mas_equalTo(ws.contentView).offset(-20);
    }];
    
    [self.contentView addSubview:self.msgLabel];
    [self.msgLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(@20);
        make.centerY.mas_equalTo(ws.msgStyleImageView);
        make.left.mas_equalTo(ws.msgStyleImageView.mas_right).offset(5);
        make.right.mas_equalTo(ws.indicatorImageView.mas_left);
    }];
}

@end
