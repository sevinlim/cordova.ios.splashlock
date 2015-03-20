/*
 * Copyright (C) 2015 Sevin Lim
 */

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVScreenOrientationDelegate.h>
//#import "AppDelegate.h"

@interface SplashLock : CDVPlugin <CDVScreenOrientationDelegate> {
	BOOL shouldRotate;
}

@end
