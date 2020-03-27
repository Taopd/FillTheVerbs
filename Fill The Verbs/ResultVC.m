//
//  ResultVC.m
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ResultVC.h"

@interface ResultVC ()

@end

@implementation ResultVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = true;
    
    _top.text = _toplabel;
    [_b setTitle:_buttonLabel forState:UIControlStateNormal];
}

- (IBAction)b:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
