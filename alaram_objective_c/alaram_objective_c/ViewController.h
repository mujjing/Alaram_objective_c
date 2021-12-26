//
//  ViewController.h
//  alaram_objective_c
//
//  Created by 전지훈 on 2021/12/26.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *infoButton;
@property (strong, nonatomic) MainViewController *mainViewController;

@end

