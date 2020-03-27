//
//  LevelVC.m
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "LevelVC.h"
#import "GameVC.h"

@interface LevelVC ()

@end

@implementation LevelVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = true;
    
    NSString * level1 = @"YES";
    NSString * level2;
    NSString * level3 ;
    NSString * level4 ;
    NSString * level5 ;
    NSString * level6;
    NSString * level7 ;
    NSString * level8 ;
    NSString * level9;
    NSString * level10 ;
    NSString * level11;
    NSString * level12;
    
    
    
        level1 = @"YES";
        level2 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level2Open"];
        level3 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level3Open"];
        level4 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level4Open"];
        level5 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level5Open"];
        level6 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level6Open"];
        level7 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level7Open"];
        level8 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level8Open"];
        level9 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level9Open"];
    level10 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level10Open"];
    level11 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level11Open"];
    level12 = [[NSUserDefaults standardUserDefaults] objectForKey:@"Level12Open"];
        
 
    
    
    
    if ([level1 isEqualToString:@"YES"])
    {
     
        [_b1 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b1.userInteractionEnabled = true;
    }
    else
    {
        [_b1 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b1.userInteractionEnabled = false;
    }
    
    if ([level2 isEqualToString:@"YES"])
    {
        
     
        [_b2 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b2.userInteractionEnabled = true;
    }
    else
    {
        [_b2 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b2.userInteractionEnabled = false;
    }
    
    
    if ([level3 isEqualToString:@"YES"])
    {
        
        [_b3 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b3.userInteractionEnabled = true;
    }
    else
    {
        [_b3 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b3.userInteractionEnabled = false;
    }
    
    
    if ([level4 isEqualToString:@"YES"])
    {
       
        [_b4 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b4.userInteractionEnabled = true;
    }
    else
    {
        [_b4 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b4.userInteractionEnabled = false;
    }
    
    if ([level5 isEqualToString:@"YES"])
    {
       
        [_b5 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b5.userInteractionEnabled = true;
    }
    else
    {
        [_b5 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b5.userInteractionEnabled = false;
    }
    
    
    if ([level6 isEqualToString:@"YES"])
    {
  
        [_b6 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b6.userInteractionEnabled = true;
    }
    else
    {
        [_b6 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b6.userInteractionEnabled = false;
    }
    
    if ([level7 isEqualToString:@"YES"])
    {
    
        [_b7 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b7.userInteractionEnabled = true;
    }
    else
    {
        [_b7 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b7.userInteractionEnabled = false;
    }
    
    
    if ([level8 isEqualToString:@"YES"])
    {
      
        [_b8 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b8.userInteractionEnabled = true;
    }
    else
    {
        [_b8 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b8.userInteractionEnabled = false;
    }
    
    
    
    
    
    
    
    
    
    if ([level9 isEqualToString:@"YES"])
    {
        [_b9 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_b9 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b9.userInteractionEnabled = true;
    }
    else
    {
        [_b9 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b9.userInteractionEnabled = false;
    }
    
    
    
    if ([level10 isEqualToString:@"YES"])
    {
       
        [_b10 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b10.userInteractionEnabled = true;
    }
    else
    {
        [_b10 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b10.userInteractionEnabled = false;
    }
    
    
    
    if ([level11 isEqualToString:@"YES"])
    {
       
        [_b11 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b11.userInteractionEnabled = true;
    }
    else
    {
        [_b11 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b11.userInteractionEnabled = false;
    }
    
    
    if ([level12 isEqualToString:@"YES"])
    {
    
        [_b12 setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]];
        _b12.userInteractionEnabled = true;
    }
    else
    {
        [_b12 setBackgroundColor:[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0]];
        _b12.userInteractionEnabled = false;
    }
    
}



- (IBAction)b1:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"1";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b2:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"2";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b3:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"3";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b4:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"4";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b5:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"5";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b6:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"6";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b7:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"7";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b8:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"8";
    v.type = self.type;
    [self.navigationController pushViewController:v animated:YES];
}








- (IBAction)b9:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"9";
    [self.navigationController pushViewController:v animated:YES];
}
- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES ];
}

- (IBAction)b10:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"10";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b11:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"11";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)b12:(id)sender
{
    GameVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"GameVC"];
    v.level = @"12";
    [self.navigationController pushViewController:v animated:YES];
}

@end
