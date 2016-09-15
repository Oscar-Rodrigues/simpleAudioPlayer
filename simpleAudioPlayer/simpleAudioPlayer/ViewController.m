//
//  ViewController.m
//  simpleAudioPlayer
//
//  Created by Oscar Rodrigues on 08/09/16.
//  Copyright © 2016 Oscar Rodrigues. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *filePaths = nil;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    filePaths = [NSArray arrayWithObjects:
     @"switch",
     @"ting",
     nil];
    
    [[SimpleAudioPlayer sharedInstance] preloadAudioSample:filePaths[0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)play:(id)sender
{
    [[SimpleAudioPlayer sharedInstance] playAudioSample:filePaths[0]];
}

@end
