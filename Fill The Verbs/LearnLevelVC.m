//
//  LearnLevelVC.m
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "LearnLevelVC.h"
#import "LearnVC.h"

@interface LearnLevelVC ()

@end

@implementation LearnLevelVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)fruits:(id)sender
{
    LearnVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"LearnVC"];
    vc.level = @"Fruits";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)vegetables:(id)sender
{
    LearnVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"LearnVC"];
    vc.level = @"Vegetables";
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:true];
}


@end
