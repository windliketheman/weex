//
//  AppDelegate+Weex.m
//  First-Weex
//
//  Created by jia on 2017/11/25.
//  Copyright © 2017年 orange. All rights reserved.
//

#import "AppDelegate+Weex.h"
#import <WeexSDK/WeexSDK.h>

@implementation AppDelegate (Weex)

- (void)launchWeex
{
    //business configuration
    [WXAppConfiguration setAppGroup:@"AliApp"];
    [WXAppConfiguration setAppName:@"WeexDemo"];
    [WXAppConfiguration setAppVersion:@"1.0.0"];
    //init sdk environment
    [WXSDKEngine initSDKEnvironment];
    //register custom module and component，optional
    [WXSDKEngine registerComponent:@"MyView" withClass:[MyViewComponent class]];
    [WXSDKEngine registerModule:@"event" withClass:[WXEventModule class]];
    //register the implementation of protocol, optional
    [WXSDKEngine registerHandler:[WXNavigationDefaultImpl new] withProtocol:@protocol(WXNavigationProtocol)];
    //set the log level
    [WXLog setLogLevel: WXLogLevelAll];
}

@end
