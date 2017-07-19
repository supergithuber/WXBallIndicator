//
//  WXBallIndicator.h
//  WXBallIndicator
//
//  Created by 吴浠 on 2017/7/19.
//  Copyright © 2017年 吴浠. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, WXDirection){
    WXDirectionLeftToRight,
    WXDirectionRightToLeft
};

@interface WXBallIndicator : UIView

@property (nonatomic, strong)UIColor *indicatorColor;
@property (nonatomic, strong)UIColor *ballColor;

@property (nonatomic, assign)NSInteger indicatorBallNumber;
@property (nonatomic, assign)NSInteger ballNumber;

@property (nonatomic, assign)NSUInteger speed;
@property (nonatomic, assign)WXDirection direction;

@property (nonatomic, assign)CGFloat ballRadius;
- (void)startAnimation;
- (void)stopAnimation;

@end
