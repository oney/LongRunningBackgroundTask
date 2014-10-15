//
//  ViewController.h
//  LongRunningBackgroundTask
//
//  Created by KH1386 on 4/23/14.
//  Copyright (c) 2014 KH1386. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackgroundTask.h"
@interface ViewController : UIViewController
{
    BackgroundTask * bgTask;
}
-(void) heartbeatTimerCallback:(id)info;

@end
