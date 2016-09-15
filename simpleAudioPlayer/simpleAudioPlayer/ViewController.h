//
//  ViewController.h
//  simpleAudioPlayer
//
//  Created by Oscar Rodrigues on 08/09/16.
//  Copyright © 2016 Oscar Rodrigues. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "simpleAudioPlayer.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) SimpleAudioPlayer *simpleAudioPlayer;

- (IBAction)play1:(id) sender;
- (IBAction)play2:(id) sender;

@end

