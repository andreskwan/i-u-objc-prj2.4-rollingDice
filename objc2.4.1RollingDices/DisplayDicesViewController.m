//
//  DisplayDicesViewController.m
//  objc2.4.1RollingDices
//
//  Created by Andres Kwan on 9/26/15.
//  Copyright © 2015 Kwan. All rights reserved.
//

#import "DisplayDicesViewController.h"

@interface DisplayDicesViewController ()

@end

@implementation DisplayDicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.imageDiceOne.image = [UIImage imageNamed:[NSString stringWithFormat:@"d%d",self.firstDiceValue]];
    self.imageDiceTwo.image = [UIImage imageNamed:[NSString stringWithFormat:@"d%d",self.secondDiceValue]];

    self.imageDiceOne.alpha = 0;
    self.imageDiceTwo.alpha = 0;
}

-(void)viewDidAppear:(BOOL)animated
{
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.imageDiceOne.alpha = 1;
                         self.imageDiceTwo.alpha = 1;
                     }];
}
- (IBAction)buttonDismissVC:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

@end
