//
//  ViewControllerA.m
//  NavigationPresent
//
//  Created by kamous on 2016/12/27.
//  Copyright © 2016年 kamous. All rights reserved.
//

#import "ViewControllerA.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onNextButtonPressed:(id)sender {
    UINavigationController *navB = [self.storyboard instantiateViewControllerWithIdentifier:@"navigationControllerB"];
//    [self.navigationController pushViewController:navB animated:YES];
//    [self presentViewController:navB animated:YES completion:NULL];
    [self presentViewController:navB animated:YES completion:NULL pushStyle:YES];
}

@end
