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

@property (nonatomic, strong)UIColor *indicatorColor;    //scrollBall color
@property (nonatomic, strong)UIColor *ballColor;         //normalBall color

@property (nonatomic, assign)NSInteger indicatorBallNumber;     //scrollBall Number
@property (nonatomic, assign)NSInteger ballNumber;              //totalBall Number

@property (nonatomic, assign)CGFloat speed;                //ball speed :bigger(slower)
@property (nonatomic, assign)WXDirection direction;        //left to right ,right to left

@property (nonatomic, assign)CGFloat ballRadius;        // ball redius
- (void)startAnimation;
- (void)stopAnimation;

@end
