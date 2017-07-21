//
//  WXBallIndicator.m
//  WXBallIndicator
//
//  Created by 吴浠 on 2017/7/19.
//  Copyright © 2017年 吴浠. All rights reserved.
//

#import "WXBallIndicator.h"

@interface WXBallIndicator()

@property (nonatomic, strong)NSTimer *timer;
@property (nonatomic, strong)NSMutableArray *ballArray;
@property (nonatomic, assign)NSInteger headerBallIndex;
@property (nonatomic, copy)NSMutableArray *colorBallIndex;

@end

@implementation WXBallIndicator

- (instancetype)init{
    if (self = [super init])
    {
        self.frame = CGRectMake(0, 0, 100, 30);
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]){
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{

    if (self = [super initWithCoder:aDecoder]){
        [self initialize];
    }
    return self;
}

- (void)initialize{
    self.indicatorColor = [UIColor yellowColor];
    self.ballColor = [UIColor whiteColor];
    self.ballNumber = 5;
    self.indicatorBallNumber = 2;
    self.speed = 1;
    self.direction = WXDirectionLeftToRight;
    self.ballRadius = 5;
    self.backgroundColor = [UIColor blackColor];
    self.ballArray = [NSMutableArray array];
    
    
}
- (void)layoutSubviews
{
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat distance = (width - self.ballRadius * 2)/(self.ballNumber - 1);
    for(NSInteger i = 0;i < self.ballNumber; i++){
        UIView *ballView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _ballRadius * 2, _ballRadius * 2)];
        ballView.center = CGPointMake(self.ballRadius + i * distance, height/2.0);
        ballView.layer.cornerRadius = self.ballRadius;
        ballView.backgroundColor = self.ballColor;
        [self.ballArray addObject:ballView];
        [self addSubview:ballView];
        
    }
}
- (void)startAnimation{
    if (!self.timer)
    {
        if (self.direction == WXDirectionLeftToRight){
            self.headerBallIndex = 0;
        }else{
            self.headerBallIndex = self.ballNumber-1;
        }
        self.timer = [NSTimer timerWithTimeInterval:self.speed target:self selector:@selector(changeColor) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    }
}
- (void)changeColor{
    for (UIView *ball in self.ballArray) {
        ball.backgroundColor = self.ballColor;
    }
    if (self.direction == WXDirectionLeftToRight){
        for (NSInteger i = self.headerBallIndex; i > (self.headerBallIndex - self.indicatorBallNumber); i--){
            if (i >= 0 && i < self.ballNumber){
                UIView *ball = self.ballArray[i];
                ball.backgroundColor = self.indicatorColor;
            }
        }
        
        self.headerBallIndex += 1;
        if (self.headerBallIndex > (self.ballNumber + self.indicatorBallNumber)){
            self.headerBallIndex = 0;
            
        }
    }else{
        for (NSInteger i = self.headerBallIndex; i < (self.headerBallIndex + self.indicatorBallNumber); i++){
            if (i >= 0 && i < self.ballNumber){
                UIView *ball = self.ballArray[i];
                ball.backgroundColor = self.indicatorColor;
            }
        }
        
        self.headerBallIndex -= 1;
        if (self.headerBallIndex < -self.indicatorBallNumber){
            self.headerBallIndex = self.ballNumber -1;
            
        }
    }
}
- (void)stopAnimation{
    if (self.direction == WXDirectionLeftToRight){
        self.headerBallIndex = 0;
    }else{
        self.headerBallIndex = self.ballNumber-1;
    }
    [self.timer invalidate];
    self.timer = nil;
    for (UIView *ball in self.ballArray) {
        ball.backgroundColor = self.ballColor;
    }
}

@end
