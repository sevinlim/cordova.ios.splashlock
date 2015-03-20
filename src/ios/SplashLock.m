/*
 * Copyright (C) 2015 Sevin Lim
 */

#import "SplashLock.h"

@implementation SplashLock

- (void)pluginInitialize
{
    NSLog(@"Splash Lock init");
    shouldRotate = NO;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pageDidLoad) name:CDVPageDidLoadNotification object:self.webView];
}

- (void)pageDidLoad
{
    NSLog(@"Splash Lock page Load");
    shouldRotate = YES;
}

- (NSUInteger)supportedInterfaceOrientations {
	return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// return (interfaceOrientation == UIInterfaceOrientationPortrait) || (interfaceOrientation == UIInterfaceOrientationLandscape);
    NSLog(@"shouldAutorotateToInterfaceOrientation");
	return shouldRotate;
}

- (BOOL)shouldAutorotate {
    return shouldRotate;
}

@end
