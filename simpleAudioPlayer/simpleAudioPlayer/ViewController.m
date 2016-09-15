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
     @"tick",
     nil];
    
    for(int i = 0; i<[filePaths count];i++){
        NSString *path = filePaths[i];
        [[SimpleAudioPlayer sharedInstance] preloadAudioSample:path];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)play1:(id)sender
{
    [[SimpleAudioPlayer sharedInstance] playAudioSample:@"switch"];
}

- (IBAction)play2:(id)sender
{
    [[SimpleAudioPlayer sharedInstance] playAudioSample:@"tick"];
}

@end
