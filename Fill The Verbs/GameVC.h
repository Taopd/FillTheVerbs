//
//  GameVC.h
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameVC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property NSString * type;

@property NSString * level;
@property (weak, nonatomic) IBOutlet UILabel *questionNumber;
@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b8;

@property (weak, nonatomic) IBOutlet UIButton *next;

@property (weak, nonatomic) IBOutlet UILabel *scorelabel;




@end

NS_ASSUME_NONNULL_END
