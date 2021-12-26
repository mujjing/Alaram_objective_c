//
//  MainClockView.m
//  alaram_objective_c
//
//  Created by 전지훈 on 2021/12/26.
//

#import "MainClockView.h"

#define SECOND_WIDTH 60
#define MINUTE_WIDTH 45
#define HOUR_WIDTH 35

@implementation MainClockView


@synthesize pHour;
@synthesize pMinute;
@synthesize pSecond;

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
//    UIImage *img = [UIImage imageNamed:@"clock.png"];
//    imgClock = CGImageRetain(img.CGImage);
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawClockBitmap:context];
    [self drawLine:context];
}

- (void)drawLine:(CGContextRef)context {
    int centerX = self.bounds.size.width / 2;
    int centerY = self.bounds.size.height / 2;
    
    [self DrawSecond:context CenterX:centerX CenterY:centerY];
    [self DrawMinute:context CenterX:centerX CenterY:centerY];
    [self DrawHour:context CenterX:centerX CenterY:centerY];
}

- (void)DrawSecond:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY
{
    int newX, newY;
    newX = (int)(sin(pSecond * 6 * 3.14/180)* SECOND_WIDTH + pCenterX);
    newY = (int)(pCenterY - (cos(pSecond * 6 * 3.14/180)* SECOND_WIDTH));
    CGContextSetRGBStrokeColor(context, 0, 0, 0, 1.0);
    CGContextSetLineWidth(context, 2.0);
    CGContextMoveToPoint(context, pCenterX, pCenterY);
    CGContextAddLineToPoint(context, newX, newY);
    CGContextStrokePath(context);
}

- (void)DrawMinute:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY
{
    int newX, newY;
    newX = (int)(sin(pMinute * 6 * 3.14/180)* MINUTE_WIDTH + pCenterX);
    newY = (int)(pCenterY - (cos(pMinute * 6 * 3.14/180)* MINUTE_WIDTH));
    CGContextSetRGBStrokeColor(context, 0, 0, 0, 1.0);
    CGContextSetLineWidth(context, 3.0);
    CGContextMoveToPoint(context, pCenterX, pCenterY);
    CGContextAddLineToPoint(context, newX, newY);
    CGContextStrokePath(context);
}

- (void)DrawHour:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY
{
    int newX, newY;
    newX = (int)(sin(pHour * 6 * 3.14/180)* HOUR_WIDTH + pCenterX);
    newY = (int)(pCenterY - (cos(pHour * 6 * 3.14/180)* HOUR_WIDTH));
    CGContextSetRGBStrokeColor(context, 0, 0, 0, 1.0);
    CGContextSetLineWidth(context, 4.0);
    CGContextMoveToPoint(context, pCenterX, pCenterY);
    CGContextAddLineToPoint(context, newX, newY);
    CGContextStrokePath(context);
}

-(void)drawClockBitmap:(CGContextRef)context {
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 0.0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextClipToRect(context, CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height));
    CGContextDrawImage(context, CGRectMake(0, 0, CGImageGetWidth(imgClock), CGImageGetHeight(imgClock)), imgClock);
    CGContextRestoreGState(context);
}

@end
