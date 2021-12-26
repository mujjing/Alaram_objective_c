//
//  MainClockView.h
//  alaram_objective_c
//
//  Created by 전지훈 on 2021/12/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainClockView : UIView {
    
    CGImageRef imgClock;
    int pHour;
    int pMinute;
    int pSecond;
}

-(void)drawLine:(CGContextRef)context;
-(void)drawClockBitmap:(CGContextRef)context;
-(void)DrawSecond:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY;
-(void)DrawMinute:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY;
-(void)DrawHour:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY;

@property int pHour;
@property int pMinute;
@property int pSecond;

@end

NS_ASSUME_NONNULL_END
