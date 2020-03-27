//
//  ResultVC.h
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResultVC : UIViewController


@property NSString* buttonLabel;
@property NSString* toplabel;


@property (weak, nonatomic) IBOutlet UIButton *b;
@property (weak, nonatomic) IBOutlet UILabel *top;

@end

NS_ASSUME_NONNULL_END
