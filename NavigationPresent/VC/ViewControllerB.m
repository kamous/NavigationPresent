//
//  ViewControllerB.m
//  NavigationPresent
//
//  Created by kamous on 2016/12/27.
//  Copyright © 2016年 kamous. All rights reserved.
//

#import "ViewControllerB.h"

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"X"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(onCloseButtonPressed:)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onCloseButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}



@end
