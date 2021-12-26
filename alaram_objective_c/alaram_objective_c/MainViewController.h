//
//  MainViewController.h
//  alaram_objective_c
//
//  Created by 전지훈 on 2021/12/26.
//

#import <UIKit/UIKit.h>
#import "MainClockView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController
{
    NSTimer *timer;
    IBOutlet UILabel *clockDisplay;
    __weak IBOutlet MainClockView *pClockView;
    
}

-(void)onTimer;
@property Boolean pAlarmOnOff;
@property int pAlarmHour;
@property int pAlarmMinute;
@end

NS_ASSUME_NONNULL_END
