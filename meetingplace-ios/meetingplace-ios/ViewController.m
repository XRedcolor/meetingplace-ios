//
//  ViewController.m
//  meetingplace-ios
//
//  Created by XRedcolor on 15/7/30.
//  Copyright (c) 2015年 mirror. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DDLogError(@"Error");
    DDLogWarn(@"Warning");
    DDLogInfo(@"Info");
    DDLogDebug(@"Debug");
    DDLogVerbose(@"Verbose");
}

@end
