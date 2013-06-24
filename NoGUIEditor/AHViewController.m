//
//  AHViewController.m
//  NoGUIEditor
//
//  Created by Adlai Holler on 6/24/13.
//  Copyright (c) 2013 Adlai Holler. All rights reserved.
//

#import "AHViewController.h"

@interface AHViewController ()

@end

@implementation AHViewController

-(void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view.backgroundColor = UIColor.darkGrayColor;
    [self setupButton];
}
-(void)setupButton
{
    UIButton *theButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [theButton setTitle:@"Trigger" forState:UIControlStateNormal];
    [theButton addTarget:self action:@selector(buttonDidReceiveTap:) forControlEvents:UIControlEventTouchUpInside];
    // Center theButton in self.view
    theButton.frame = CGRectMake(0, 0, 100, 40);
    theButton.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
    [self.view addSubview:theButton];
}
// Note how this is not an IBAction -- IB = "interface builder"
-(void)buttonDidReceiveTap:(UIButton *)button
{
    [[[UIAlertView alloc] initWithTitle:@"Alert" message:@"You pulled the trigger" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
}
@end
