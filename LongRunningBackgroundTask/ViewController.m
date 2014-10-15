//
//  ViewController.m
//  LongRunningBackgroundTask
//
//  Created by KH1386 on 4/23/14.
//  Copyright (c) 2014 KH1386. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    bgTask = [[BackgroundTask alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) backgroundCallback:(id)info
{
    NSLog(@"########");
    NSLog(@"###### BG TASK RUNNING:%f", [UIApplication sharedApplication].backgroundTimeRemaining);

}


-(IBAction) startBackgroundTask:(id)sender
{
    [bgTask startBackgroundTasks:2 target:self selector:@selector(backgroundCallback:)];
}
-(IBAction) stopBackgroundTask:(id)sender
{
    [bgTask stopBackgroundTask];
}
@end
