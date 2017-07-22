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
    
    WXBallIndicator *view2 = [[WXBallIndicator alloc] init];
    view2.frame = CGRectMake(10, 300, 200, 50);
    view2.ballColor = [UIColor whiteColor];
    view2.indicatorColor = [UIColor greenColor];
    view2.speed = 0.6;
    view2.ballRadius = 10;
    view2.ballNumber = 8;
    view2.indicatorBallNumber = 4;
    view2.backgroundColor = [UIColor redColor];
    view2.layer.cornerRadius = 10;
    [self.view addSubview:view2];
    
    [view2 startAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
