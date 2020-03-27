//
//  GameVC.m
//  Learn Fruits
//
//  Created by Macbook on 07/09/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "GameVC.h"
#import "ResultVC.h"

@interface GameVC ()
{
    NSMutableArray * dataArray;
    NSMutableDictionary * data;
    
    NSMutableDictionary * SelectedItem;
    
    NSString * target;
    
    NSString * answerString;
    NSString * detailString;
    
    NSString * ansImage;
    
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

@implementation GameVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = true;
    
    count = 0;
    [self setArray];
    
    
    timer = 30;
    
    
    
    
    [t invalidate];
    
    t = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                         target: self
                                       selector:@selector(timerLabel:)
                                       userInfo: nil repeats:YES];
    
    [self setScreen];
    
    
}

-(void) setScreen
{

        sum = 1;
        buttonCount = 1;
        answerString = @"";
        
        count = count+1;
        
        
        //  [_continueButton setTitle:@"Get Start" forState:UIControlStateNormal];
        
        int rand = arc4random()%dataArray.count;
        
        SelectedItem = [dataArray objectAtIndex:rand];
        
        // targetNumber = [[SelectedItem objectForKey:@"target"] intValue];
        
        //_challengeAndResultLabel.text = [SelectedItem objectForKey:@"q"];
        
        
       // answerString = [SelectedItem objectForKey:@"answer"] ;
       // detailString = [SelectedItem objectForKey:@"detail"] ;
        //  _answerLabel.text = @"? + # - #";
        
        // _roundLabel.text = [NSString stringWithFormat:@"Pass This Teaser"];
        //   _mainView.hidden = true;
        
        
//        _levelLabel.text = [NSString stringWithFormat:@"%d / 10",count];
//        _nameLabel.text = [NSString stringWithFormat:@"This is %@",[SelectedItem objectForKey:@"name"]];
//
//        _fvimageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png",[SelectedItem objectForKey:@"image"]]];
        
        
        
    _questionNumber.text = [NSString stringWithFormat:@"Fill %d of 7",count ];
        
       // _scorelabel.text = [NSString stringWithFormat:@"Score : %d",score];
        
      //  _questionNumber.text = [NSString stringWithFormat:@"%d 0f 20",count];
        
        _question.text = [SelectedItem objectForKey:@"question"];
    
    
    
    if (count == 1)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n6"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n7"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n8"] forState:UIControlStateNormal];
    }
    else if (count == 2)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n7"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
    }
    else if (count == 3)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
    }
    else if (count == 4)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//       [_b7 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n7"] forState:UIControlStateNormal];
    }
    else if (count == 5)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
//       [_b7 setTitle:[SelectedItem objectForKey:@"n6"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
    }
    else if (count == 6)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
    }
    else if (count == 7)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n6"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n7"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n8"] forState:UIControlStateNormal];
    }
    else if (count == 8)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n7"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n6"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
    }
    else if (count == 9)
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
    }
    else
    {
        [_b1 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
        [_b2 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
        [_b3 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
        [_b4 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
        [_b5 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//        [_b6 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
//        [_b7 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
//        [_b8 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
    }
   
    

        
        
        ansImage = [SelectedItem objectForKey:@"answer"];
        
        
        //        [_b1 setTitle:[SelectedItem objectForKey:@"b1"] forState:UIControlStateNormal];
        //        [_b2 setTitle:[SelectedItem objectForKey:@"b2"] forState:UIControlStateNormal];
        //        [_b3 setTitle:[SelectedItem objectForKey:@"b3"] forState:UIControlStateNormal];
        //        [_b4 setTitle:[SelectedItem objectForKey:@"b4"] forState:UIControlStateNormal];
        //        _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
        //
        //        [self setButtons];
        
        
    
        
 
}


-(void)timerLabel:(NSTimer *)timer1
{
    NSDictionary *dic=[timer1 observationInfo];
    timer=timer-1;
    _timerLabel.text = [NSString stringWithFormat:@"%d",timer];
    

    if (timer == 0)
    {
        [t invalidate];
        
        [self showTimeOut];
    }
}


- (IBAction)b1:(id)sender
{
   
    NSString * im = _b1.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
        [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}

- (IBAction)b2:(id)sender
{
 
    NSString * im = _b2.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
//        score = score + 100;
//        _scorelabel.text = [NSString stringWithFormat:@"Score : %d",score];
        [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}

- (IBAction)b3:(id)sender
{
    
    NSString * im = _b3.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
      [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}

- (IBAction)b4:(id)sender
{

    NSString * im = _b4.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
       [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}
- (IBAction)b5:(id)sender
{
    NSString * im = _b5.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
        [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}


- (IBAction)b6:(id)sender
{
    NSString * im = _b6.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
        [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}
- (IBAction)b7:(id)sender
{
    NSString * im = _b7.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
        [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}

- (IBAction)b8:(id)sender
{
    NSString * im = _b8.titleLabel.text;
    
    if ([im isEqualToString:ansImage])
    {
        [self showWin];
    }
    else
    {
        [self showWrongAnswer];
    }
}


-(BOOL)firstimage:(UIImage *)image1 isEqualTo:(UIImage *)image2 {
    NSData *data1 = UIImagePNGRepresentation(image1);
    NSData *data2 = UIImagePNGRepresentation(image2);
    
    return [data1 isEqualToData:data2];
}





-(void) setArray
{
    dataArray = [[NSMutableArray alloc] init];
    
  data = [[NSMutableDictionary alloc] init];
           [data setValue:@"It __ ( rain ) since last night" forKey:@"question"];
           
           [data setValue:@"has rain" forKey:@"n1"];
           [data setValue:@"is raining" forKey:@"n2"];
           [data setValue:@"was rain" forKey:@"n3"];
           [data setValue:@"has been raining" forKey:@"n4"];
           [data setValue:@"is being raining" forKey:@"n5"];
           
           [data setValue:@"has been raining" forKey:@"answer"];
           [dataArray addObject:data];




   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"My school ______ ( hold ) a food-and-fun fair next month" forKey:@"question"];
           
           [data setValue:@"is holding" forKey:@"n1"];
           [data setValue:@"is hold" forKey:@"n2"];
           [data setValue:@"have" forKey:@"n3"];
           [data setValue:@"has been" forKey:@"n4"];
           [data setValue:@"is being" forKey:@"n5"];
           
           [data setValue:@"is holding" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"Look! Those bees ______ ( buzz ) round the flowers" forKey:@"question"];
           
           [data setValue:@"are buzz" forKey:@"n1"];
           [data setValue:@"is buzzes" forKey:@"n2"];
           [data setValue:@"is buzz" forKey:@"n3"];
           [data setValue:@"are buzzing" forKey:@"n4"];
           [data setValue:@"is buzzing" forKey:@"n5"];
           
           [data setValue:@"are buzzing" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"Mary told him what ______ ( happen ) to his dog" forKey:@"question"];
           
           [data setValue:@"had happened" forKey:@"n1"];
           [data setValue:@"had happen" forKey:@"n2"];
           [data setValue:@"is happens" forKey:@"n3"];
           [data setValue:@"had happens" forKey:@"n4"];
           [data setValue:@"happens" forKey:@"n5"];
           
           [data setValue:@"had happened" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"We ______ ( go ) shopping last weekend" forKey:@"question"];
           
           [data setValue:@"went" forKey:@"n1"];
           [data setValue:@"goes" forKey:@"n2"];
           [data setValue:@"going" forKey:@"n3"];
           [data setValue:@"has gone" forKey:@"n4"];
           [data setValue:@"gone" forKey:@"n5"];
           
           [data setValue:@"went" forKey:@"answer"];
           [dataArray addObject:data];


   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"It ______ ( be ) a fine morning today" forKey:@"question"];
           
           [data setValue:@"is" forKey:@"n1"];
           [data setValue:@"was" forKey:@"n2"];
           [data setValue:@"has" forKey:@"n3"];
           [data setValue:@"have" forKey:@"n4"];
           [data setValue:@"were" forKey:@"n5"];
           
           [data setValue:@"is" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"That child ______ always drinking to much water" forKey:@"question"];
           
           [data setValue:@"was" forKey:@"n1"];
           [data setValue:@"has" forKey:@"n2"];
           [data setValue:@"were" forKey:@"n3"];
           [data setValue:@"had" forKey:@"n4"];
           [data setValue:@"is" forKey:@"n5"];
           
           [data setValue:@"is" forKey:@"answer"];
           [dataArray addObject:data];




   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"I thought that the grass ______ ( need ) cutting" forKey:@"question"];
           
           [data setValue:@"needed" forKey:@"n1"];
           [data setValue:@"needing" forKey:@"n2"];
           [data setValue:@"is needing" forKey:@"n3"];
           [data setValue:@"were need" forKey:@"n4"];
           [data setValue:@"was needs" forKey:@"n5"];
           
           [data setValue:@"needed" forKey:@"answer"];
           [dataArray addObject:data];


   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"Your friends ______ ( wait ) for you for over an hour" forKey:@"question"];
           
           [data setValue:@"have been waiting" forKey:@"n1"];
           [data setValue:@"have waiting" forKey:@"n2"];
           [data setValue:@"had waits" forKey:@"n3"];
           [data setValue:@"waits" forKey:@"n4"];
           [data setValue:@"waiting" forKey:@"n5"];
           
           [data setValue:@"have been waiting" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"She ______ ( mop ) the floor when her cousin came in" forKey:@"question"];
           
           [data setValue:@"has" forKey:@"n1"];
           [data setValue:@"was mopp" forKey:@"n2"];
           [data setValue:@"were" forKey:@"n3"];
           [data setValue:@"was mopping" forKey:@"n4"];
           [data setValue:@"have been" forKey:@"n5"];
           
           [data setValue:@"was mopping" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"He walked along the road, wondering what ______ ( happen )" forKey:@"question"];
           
           [data setValue:@"had happened" forKey:@"n1"];
           [data setValue:@"has happen" forKey:@"n2"];
           [data setValue:@"had" forKey:@"n3"];
           [data setValue:@"has" forKey:@"n4"];
           [data setValue:@"was happens" forKey:@"n5"];
           
           [data setValue:@"had happened" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"where all the people ______ ( go )" forKey:@"question"];
           
           [data setValue:@"has" forKey:@"n1"];
           [data setValue:@"had gone" forKey:@"n2"];
           [data setValue:@"gone" forKey:@"n3"];
           [data setValue:@"is gone" forKey:@"n4"];
           [data setValue:@"was go" forKey:@"n5"];
           
           [data setValue:@"had gone" forKey:@"answer"];
           [dataArray addObject:data];




   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"The police ______ ( investigate ) the robbery" forKey:@"question"];
           
           [data setValue:@"is investigates" forKey:@"n1"];
           [data setValue:@"are" forKey:@"n2"];
           [data setValue:@"was" forKey:@"n3"];
           [data setValue:@"are investigating" forKey:@"n4"];
           [data setValue:@"is being" forKey:@"n5"];
           
           [data setValue:@"are investigating" forKey:@"answer"];
           [dataArray addObject:data];



   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"he ______ ( make ) the floor dirty with his muddy shoes." forKey:@"question"];
           
           [data setValue:@" is maked" forKey:@"n1"];
           [data setValue:@"has" forKey:@"n2"];
           [data setValue:@"made" forKey:@"n3"];
           [data setValue:@"has been" forKey:@"n4"];
           [data setValue:@"is being" forKey:@"n5"];
           
           [data setValue:@"made" forKey:@"answer"];
           [dataArray addObject:data];


   data = [[NSMutableDictionary alloc] init];
           [data setValue:@"they ______ ( discover ) nothing " forKey:@"question"];
           
           [data setValue:@"have discovered" forKey:@"n1"];
           [data setValue:@"has discovered" forKey:@"n2"];
           [data setValue:@"was" forKey:@"n3"];
           [data setValue:@"has been" forKey:@"n4"];
           [data setValue:@"is being" forKey:@"n5"];
           
           [data setValue:@"have discovered" forKey:@"answer"];
           [dataArray addObject:data];




//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Smart" forKey:@"question"];
//        
//        [data setValue:@"Clever" forKey:@"n1"];
//        [data setValue:@"Dumb" forKey:@"n2"];
//        [data setValue:@"useless" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"Boring" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"Clever" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Awful" forKey:@"question"];
//        
//        [data setValue:@"awareness" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"Horrible" forKey:@"n7"];
//        
//        [data setValue:@"Horrible" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Exact" forKey:@"question"];
//        
//        [data setValue:@"Wrong" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"Specific" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"Boring" forKey:@"n7"];
//        
//        [data setValue:@"Specific" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Suitable" forKey:@"question"];
//        
//        [data setValue:@"Accurate" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"Uniform" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"Perfect" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"Uniform" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Complete" forKey:@"question"];
//        
//        [data setValue:@"Perfect" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"disable" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"Perfect" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Interesting" forKey:@"question"];
//        
//        [data setValue:@"Excellent" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"Fascinating" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"move" forKey:@"n7"];
//        
//        [data setValue:@"Fascinating" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Hide" forKey:@"question"];
//        
//        [data setValue:@"fascinating" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"Conceal" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"disable" forKey:@"n7"];
//        
//        [data setValue:@"Conceal" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Move" forKey:@"question"];
//        
//        [data setValue:@"Conceal" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"disable" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"go" forKey:@"n7"];
//        
//        [data setValue:@"go" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Keep" forKey:@"question"];
//        
//        [data setValue:@"go" forKey:@"n1"];
//        [data setValue:@"give" forKey:@"n2"];
//        [data setValue:@"dices" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"Hold" forKey:@"n5"];
//        [data setValue:@"kind" forKey:@"n6"];
//        [data setValue:@"conceal" forKey:@"n7"];
//        
//        [data setValue:@"Hold" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Destroy" forKey:@"question"];
//        
//        [data setValue:@"ruin" forKey:@"n1"];
//        [data setValue:@"invent" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"fracture" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"ruin" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Show" forKey:@"question"];
//        
//        [data setValue:@"stamp" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"exhibit" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"procedure" forKey:@"n7"];
//        
//        [data setValue:@"exhibit" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Mark" forKey:@"question"];
//        
//        [data setValue:@"label" forKey:@"n1"];
//        [data setValue:@"topple" forKey:@"n2"];
//        [data setValue:@"display" forKey:@"n3"];
//        [data setValue:@"succor" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"label" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Decide" forKey:@"question"];
//        
//        [data setValue:@"determine" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"topple" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"succor" forKey:@"n6"];
//        [data setValue:@"display" forKey:@"n7"];
//        
//        [data setValue:@"determine" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of New" forKey:@"question"];
//        
//        [data setValue:@"fresh" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"stop" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"discontinuance" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"fresh" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of False" forKey:@"question"];
//        
//        [data setValue:@"diminutive" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"exiguous" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"fraudulent" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"fraudulent" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of True" forKey:@"question"];
//        
//        [data setValue:@"accurate" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"precise" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"snappily" forKey:@"n7"];
//        
//        [data setValue:@"accurate" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Strange" forKey:@"question"];
//        
//        [data setValue:@"standard" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"disappear" forKey:@"n3"];
//        [data setValue:@"hushed" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"abnormal" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Explain" forKey:@"question"];
//        
//        [data setValue:@"report" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"elaborate" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"proceed" forKey:@"n6"];
//        [data setValue:@"aberrant" forKey:@"n7"];
//        
//        [data setValue:@"elaborate" forKey:@"answer"];
//        [dataArray addObject:data];
//
//
//
//    data = [[NSMutableDictionary alloc] init];
//        [data setValue:@"Find the Synonym of Think" forKey:@"question"];
//        
//        [data setValue:@"believe" forKey:@"n1"];
//        [data setValue:@"depart" forKey:@"n2"];
//        [data setValue:@"divulge" forKey:@"n3"];
//        [data setValue:@"approach" forKey:@"n4"];
//        [data setValue:@"move" forKey:@"n5"];
//        [data setValue:@"contrast" forKey:@"n6"];
//        [data setValue:@"recede" forKey:@"n7"];
//        
//        [data setValue:@"believe" forKey:@"answer"];
//        [dataArray addObject:data];
//
//    
//    

    
}




-(void) showWin
{
   
    
    
    
    if (count == 7)
    {
         [t invalidate];
        if ([_level isEqualToString:@"1"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level2Open"];
        }
        else if ([_level isEqualToString:@"2"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level3Open"];
        }
        else if ([_level isEqualToString:@"3"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level4Open"];
        }
        else if ([_level isEqualToString:@"4"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level5Open"];
        }
        else if ([_level isEqualToString:@"5"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level6Open"];
        }
        else if ([_level isEqualToString:@"6"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level7Open"];
        }
        else if ([_level isEqualToString:@"7"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level8Open"];
        }
        else if ([_level isEqualToString:@"8"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level9Open"];
        }
        else if ([_level isEqualToString:@"9"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level10Open"];
        }
        else if ([_level isEqualToString:@"10"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level11Open"];
        }
        else if ([_level isEqualToString:@"11"])
        {
            [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"Level12Open"];
        }
        
        
        
        
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Congratulations - Fill The Verbs Passed"
                                                                       message:[NSString stringWithFormat:@"You passed the Fill The Verbs"]
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Next" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  
                                                                  [self.navigationController popToRootViewControllerAnimated:YES];
                                                                  
                                                              }];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else
    {
//        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Congratulations"
//                                                                       message:[NSString stringWithFormat:@"You passed the task. Try More to pass the level."]
//                                                                preferredStyle:UIAlertControllerStyleAlert];
//
//        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Next" style:UIAlertActionStyleDefault
//                                                              handler:^(UIAlertAction * action) {
        
                                                                  [self setScreen];
                                                                  
//                                                              }];
//
//        [alert addAction:defaultAction];
//        [self presentViewController:alert animated:YES completion:nil];
    }
    
    

    
}




-(void) showCorrectAnswer
{
    //[t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Fill The Verbs Passed"
                                                                   message:@"You passed Fill The Verbs"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Next" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self setScreen];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}



-(void) showWrongAnswer
{
   //[t invalidate];
    [t invalidate];
    

    
    
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Fill The Verbs Failed"
                                                                       message:@"You failed the Fill The Verbs"
                                                                preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
    
                                                                 // [self setScreen];
                                                                  
                                                                  [self.navigationController popToRootViewControllerAnimated:true];
    
                                                              }];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}


-(void) showTimeOut
{
    [t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Time Up"
                                                                   message:[NSString stringWithFormat:@"You failed  the Fill The Verbs"]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self.navigationController popViewControllerAnimated:YES];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)skip:(id)sender
{
    [self setScreen];
}

@end
