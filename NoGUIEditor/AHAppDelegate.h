//
//  AHAppDelegate.h
//  NoGUIEditor
//
//  Created by Adlai Holler on 6/24/13.
//  Copyright (c) 2013 Adlai Holler. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHViewController;

@interface AHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) AHViewController *viewController;

@end
