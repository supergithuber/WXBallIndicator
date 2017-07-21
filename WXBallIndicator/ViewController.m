//
//  ViewController.m
//  WXBallIndicator
//
//  Created by 吴浠 on 2017/7/19.
//  Copyright © 2017年 吴浠. All rights reserved.
//

#import "ViewController.h"
#import "WXBallIndicator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WXBallIndicator *view = [[WXBallIndicator alloc] init];
    view.frame = CGRectMake(10, 100, 200, 50);
    view.ballColor = [UIColor whiteColor];
    view.indicatorColor = [UIColor redColor];
    view.speed = 0.5;
    view.direction = WXDirectionRightToLeft;
    [self.view addSubview:view];
    
    [view startAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
