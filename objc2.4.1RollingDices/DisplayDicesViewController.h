//
//  DisplayDicesViewController.h
//  objc2.4.1RollingDices
//
//  Created by Andres Kwan on 9/26/15.
//  Copyright © 2015 Kwan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisplayDicesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageDiceOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageDiceTwo;
@property (assign, nonatomic) int firstDiceValue;
@property (assign, nonatomic) int secondDiceValue;
@end
