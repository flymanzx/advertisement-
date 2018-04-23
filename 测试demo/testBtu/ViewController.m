//
//  ViewController.m
//  testBtu
//
//  Created by 张张鑫 on 2018/4/18.
//  Copyright © 2018年 张张鑫. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btu  = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [btu setTitle:@"ok" forState:UIControlStateNormal];
    btu.backgroundColor = [UIColor redColor];
    [btu addTarget:self action:@selector(onlick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btu];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)onlick{
    NSString * strURL = @"11111://";
    NSURL * url = [NSURL URLWithString:strURL];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
