//
//  ViewController.m
//  myMsg
//
//  Created by cc on 16/8/18.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "FBMyMsgViewController.h"

@interface ViewController () 



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"dfjslfjdslk";

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    FBMyMsgViewController *myMsgVC = [[FBMyMsgViewController alloc] init];
    
    [self.navigationController pushViewController:myMsgVC animated:YES];
}

@end
