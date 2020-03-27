//
//  LearnVC.m
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "LearnVC.h"
#import "ResultVC.h"

@interface LearnVC ()
{
    NSMutableArray * dataArray;
    NSMutableDictionary * data;
    
    NSMutableDictionary * SelectedItem;
    
    NSString * target;
    
    NSString * answerString;
    NSString * detailString;
    
    int n1;
    int n2;
    int n3;
    
    
    int targetNumber;
    int sum;
    int attempts;
    int buttonCount;
    
    int randomButton;
    int index;
    int score;
    int count;
    int answer;
    
    int tap;
    
    NSTimer * t;
    int timer;
}
@end

@implementation LearnVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = true;
    
    
    dataArray = [[NSMutableArray alloc] init];
    
    if ([_level isEqualToString:@"Fruits"])
    {
        [self setFruitsArray];
    }
    else
    {
        [self setVegetablesArray];
    }
    
    
    [self setScreen];
   
}

- (IBAction)next:(id)sender
{
    [self setScreen];
}

- (IBAction)previous:(id)sender
{
    [self setScreenP];
}



-(void) setScreen
{
    if (count == dataArray.count)
    {
        
        ResultVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultVC"];
        if ([_level isEqualToString:@"Fruits"])
        {
            vc.toplabel = @"You have learnt try the test";
            vc.buttonLabel = @"Test Mind";
        }
        else
        {
            vc.toplabel = @"You have learnt try the test.";
            vc.buttonLabel = @"Test Mind";
        }
        [self.navigationController pushViewController:vc animated:YES];
        
        //        [User showAlertWithTitle:@"Congratulations" andMessage:@"You passed all the Teasers." andViewController:self];
        //        _mainView.hidden = true;
        //        [_continueButton setTitle:@"Back" forState:UIControlStateNormal];
        
    }
    else
    {
        sum = 1;
        buttonCount = 1;
        answerString = @"";
        
        count = count+1;
        
        
      //  [_continueButton setTitle:@"Get Start" forState:UIControlStateNormal];
        
        int rand = arc4random()%dataArray.count;
        
      //  SelectedItem = [dataArray objectAtIndex:rand];
        
        SelectedItem = [dataArray objectAtIndex:count-1];
        
        // targetNumber = [[SelectedItem objectForKey:@"target"] intValue];
        
        //_challengeAndResultLabel.text = [SelectedItem objectForKey:@"q"];
        
        
        answerString = [SelectedItem objectForKey:@"answer"] ;
        detailString = [SelectedItem objectForKey:@"detail"] ;
        //  _answerLabel.text = @"? + # - #";
        
       // _roundLabel.text = [NSString stringWithFormat:@"Pass This Teaser"];
     //   _mainView.hidden = true;
        
        
        _levelLabel.text = [NSString stringWithFormat:@"%d",count];
        _nameLabel.text = [NSString stringWithFormat:@"%@",[SelectedItem objectForKey:@"name"]];
        
        _fvimageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png",[SelectedItem objectForKey:@"image"]]];
        
//
//        [_b1 setTitle:[SelectedItem objectForKey:@"b1"] forState:UIControlStateNormal];
//        [_b2 setTitle:[SelectedItem objectForKey:@"b2"] forState:UIControlStateNormal];
//        [_b3 setTitle:[SelectedItem objectForKey:@"b3"] forState:UIControlStateNormal];
//        [_b4 setTitle:[SelectedItem objectForKey:@"b4"] forState:UIControlStateNormal];
        //        _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
        //
        //        [self setButtons];
    }
}


-(void) setScreenP
{
    if (count == 1)
    {
        
//        ResultVC * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultVC"];
//        if ([_level isEqualToString:@"Fruits"])
//        {
//            vc.toplabel = @"You have learnt try the test";
//            vc.buttonLabel = @"Test Mind";
//        }
//        else
//        {
//            vc.toplabel = @"You have learnt try the test.";
//            vc.buttonLabel = @"Test Mind";
//        }
//        [self.navigationController pushViewController:vc animated:YES];
        
        //        [User showAlertWithTitle:@"Congratulations" andMessage:@"You passed all the Teasers." andViewController:self];
        //        _mainView.hidden = true;
        //        [_continueButton setTitle:@"Back" forState:UIControlStateNormal];
        
    }
    else
    {
        sum = 1;
        buttonCount = 1;
        answerString = @"";
        
        count = count-1;
        
        
        //  [_continueButton setTitle:@"Get Start" forState:UIControlStateNormal];
        
        int rand = arc4random()%dataArray.count;
        
        //  SelectedItem = [dataArray objectAtIndex:rand];
        
        SelectedItem = [dataArray objectAtIndex:count-1];
        
        // targetNumber = [[SelectedItem objectForKey:@"target"] intValue];
        
        //_challengeAndResultLabel.text = [SelectedItem objectForKey:@"q"];
        
        
        answerString = [SelectedItem objectForKey:@"answer"] ;
        detailString = [SelectedItem objectForKey:@"detail"] ;
        //  _answerLabel.text = @"? + # - #";
        
        // _roundLabel.text = [NSString stringWithFormat:@"Pass This Teaser"];
        //   _mainView.hidden = true;
        
        
        _levelLabel.text = [NSString stringWithFormat:@"%d",count];
        _nameLabel.text = [NSString stringWithFormat:@"%@",[SelectedItem objectForKey:@"name"]];
        
        _fvimageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png",[SelectedItem objectForKey:@"image"]]];
        
        //
        //        [_b1 setTitle:[SelectedItem objectForKey:@"b1"] forState:UIControlStateNormal];
        //        [_b2 setTitle:[SelectedItem objectForKey:@"b2"] forState:UIControlStateNormal];
        //        [_b3 setTitle:[SelectedItem objectForKey:@"b3"] forState:UIControlStateNormal];
        //        [_b4 setTitle:[SelectedItem objectForKey:@"b4"] forState:UIControlStateNormal];
        //        _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
        //
        //        [self setButtons];
    }
}




-(void) setFruitsArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"watermelon" forKey:@"image"];
    [data setValue:@"Watermelon" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"cherry" forKey:@"image"];
    [data setValue:@"Cherry" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"orange" forKey:@"image"];
    [data setValue:@"Orange" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"grapes" forKey:@"image"];
    [data setValue:@"Grapes" forKey:@"name"];
    [dataArray addObject:data];
    
   
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"pear" forKey:@"image"];
    [data setValue:@"Pear" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"avocado" forKey:@"image"];
    [data setValue:@"Avocado" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"banana" forKey:@"image"];
    [data setValue:@"Banana" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"plum" forKey:@"image"];
    [data setValue:@"Plum" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"strawberry" forKey:@"image"];
    [data setValue:@"Strawberry" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"artichokes" forKey:@"image"];
    [data setValue:@"Artichokes" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"kiwi" forKey:@"image"];
    [data setValue:@"Kiwi" forKey:@"name"];
    [dataArray addObject:data];
    
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"apple" forKey:@"image"];
    [data setValue:@"Apple" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"pomegranate" forKey:@"image"];
    [data setValue:@"Pomegranate" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"blackberry" forKey:@"image"];
    [data setValue:@"Blackberry" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"date" forKey:@"image"];
    [data setValue:@"Date" forKey:@"name"];
    [dataArray addObject:data];
    
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"carrot" forKey:@"image"];
    [data setValue:@"Carrot" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"papaya" forKey:@"image"];
    [data setValue:@"Papaya" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"apricot" forKey:@"image"];
    [data setValue:@"Apricot" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"coconut" forKey:@"image"];
    [data setValue:@"Coconut" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"pineapple" forKey:@"image"];
    [data setValue:@"Pineapple" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"mango" forKey:@"image"];
    [data setValue:@"Mango" forKey:@"name"];
    [dataArray addObject:data];
    
    
   
    
    
    
}



-(void) setVegetablesArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"cabbage" forKey:@"image"];
    [data setValue:@"Cabbage" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"pumpkin" forKey:@"image"];
    [data setValue:@"Pumpkin" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"radish" forKey:@"image"];
    [data setValue:@"Radish" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"tomato" forKey:@"image"];
    [data setValue:@"Tomato" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"arugula" forKey:@"image"];
    [data setValue:@"Arugula" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"asparagus" forKey:@"image"];
    [data setValue:@"Asparagus" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"cucumber" forKey:@"image"];
    [data setValue:@"Cucumber" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"corn" forKey:@"image"];
    [data setValue:@"Corn" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"capsicum" forKey:@"image"];
    [data setValue:@"Capsicum" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"blackbeans" forKey:@"image"];
    [data setValue:@"Black Beans" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"celery" forKey:@"image"];
    [data setValue:@"Celery" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"redradish" forKey:@"image"];
    [data setValue:@"Red Radish" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"onion" forKey:@"image"];
    [data setValue:@"Onion" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"greenbeans" forKey:@"image"];
    [data setValue:@"Green Beans" forKey:@"name"];
    [dataArray addObject:data];
    
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"mushroom" forKey:@"image"];
    [data setValue:@"Mushroom" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"bokchoy" forKey:@"image"];
    [data setValue:@"Bok Choy" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"ladyfinger" forKey:@"image"];
    [data setValue:@"Lady Finger" forKey:@"name"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"potato" forKey:@"image"];
    [data setValue:@"Potato" forKey:@"name"];
    [dataArray addObject:data];
    
 
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"lemon" forKey:@"image"];
    [data setValue:@"Lemon" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"eggplant" forKey:@"image"];
    [data setValue:@"Eggplant" forKey:@"name"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"spinach" forKey:@"image"];
    [data setValue:@"Spinach" forKey:@"name"];
    [dataArray addObject:data];
    
   
}





@end
