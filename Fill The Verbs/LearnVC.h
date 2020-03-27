//
//  LearnVC.h
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LearnVC : UIViewController

@property NSString * level;

@property (weak, nonatomic) IBOutlet UIImageView *fvimageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *levelLabel;

@end

NS_ASSUME_NONNULL_END
