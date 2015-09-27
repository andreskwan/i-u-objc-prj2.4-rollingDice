//
//  ViewController.m
//  objc2.4.1RollingDices
//
//  Created by Andres Kwan on 9/26/15.
//  Copyright © 2015 Kwan. All rights reserved.
//

#import "RollDiceViewController.h"
#import "DisplayDicesViewController.h"

@interface RollDiceViewController ()

@end

@implementation RollDiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonRollDice:(UIButton *)sender {
    //1) instantiate View Controller
    DisplayDicesViewController  *displayDiceVc = [self.storyboard instantiateViewControllerWithIdentifier:@"DisplayRolledDice"];
    
    //2) generate random numbers for each dice
    displayDiceVc.firstDiceValue = [self randomDiceValue];
    displayDiceVc.secondDiceValue = [self randomDiceValue];
    
    //3 present the view controller
    [self presentViewController:displayDiceVc
                       animated:YES
                     completion:nil];
}

- (int)randomDiceValue
{
    return arc4random_uniform(6) + 1;
}
@end
