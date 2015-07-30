//
//  JVLogFormatter.m
//  meetingplace-ios
//
//  Created by XRedcolor on 15/7/30.
//  Copyright (c) 2015年 mirror. All rights reserved.
//

#import "JVLogFormatter.h"

@implementation JVLogFormatter

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString *logLevel = nil;
    
    switch (logMessage.flag) {
        case DDLogFlagError:
            logLevel = @"[Error]    >";
            break;
        case DDLogFlagWarning:
            logLevel = @"[Warning]  >";
            break;
        case DDLogFlagInfo:
            logLevel = @"[Info]     >";
            break;
        case DDLogFlagDebug:
            logLevel = @"[Debug]    >";
            break;
        case DDLogFlagVerbose:
            logLevel = @"[Verbose]  >";
            break;
    }
    
    return [NSString stringWithFormat:@"%@ [%@ %@][line %lu]: %@", logLevel, logMessage.fileName, logMessage.function, logMessage.line, logMessage.message];
}

@end
