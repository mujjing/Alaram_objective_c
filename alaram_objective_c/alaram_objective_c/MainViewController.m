//
//  MainViewController.m
//  alaram_objective_c
//
//  Created by 전지훈 on 2021/12/26.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    
    [self onTimer];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    
    [clockDisplay setFont:[UIFont fontWithName:@"DBCLDTempBlack" size:64.0]];
    
    [super viewDidLoad];
}

-(void)onTimer {
    int phour, pminute, psecond;
    
    NSCalendar *pCalendar = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDate *date = [NSDate date];
    NSDateComponents *comps = [pCalendar components:unitFlags fromDate:date];
    
    phour = (int)[comps hour];
    pminute = (int)[comps minute];
    psecond = (int)[comps second];
    
    clockDisplay.text = [NSString stringWithFormat:@"%02d:%02d:%02d", phour, pminute, psecond];
    
    pClockView.pHour = phour;
    pClockView.pMinute = pminute;
    pClockView.pSecond = psecond;
    pClockView.layer.cornerRadius = 103;
    [pClockView setNeedsDisplay];
}

@end
