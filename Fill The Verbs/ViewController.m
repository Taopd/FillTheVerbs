//
//  ViewController.m
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "LevelVC.h"
#import "LearnLevelVC.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = true;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)learn:(id)sender
{
    LevelVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"LevelVC"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)quiz:(id)sender
{
    LearnLevelVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"LearnLevelVC"];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
