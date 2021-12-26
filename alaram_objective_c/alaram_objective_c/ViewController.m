//
//  ViewController.m
//  alaram_objective_c
//
//  Created by 전지훈 on 2021/12/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    MainViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    _mainViewController = viewController;
    
    [self.view insertSubview:viewController.view belowSubview:_infoButton];
    
    [super viewDidLoad];
}


@end
