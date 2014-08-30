//
//  ViewController.m
//  SphereMenu
//
//  Created by Tu You on 14-8-24.
//  Copyright (c) 2014年 TU YOU. All rights reserved.
//

#import "ViewController.h"
#import "SphereMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:1 green:0.52 blue:0 alpha:1];
    
    UIImage *startImage = [UIImage imageNamed:@"start"];
    
    UIImage *image1 = [UIImage imageNamed:@"share_twitter_button_normal"];
    UIImage *image2 = [UIImage imageNamed:@"share_email_button_normal"];
    UIImage *image3 = [UIImage imageNamed:@"share_facebook_button_normal"];
    NSArray *images = @[image1, image2, image3];
    SphereMenu *sphereMenu = [[SphereMenu alloc] initWithStartPoint:CGPointMake(160, 200) startImage:startImage submenuImages:images];
    [self.view addSubview:sphereMenu];
    
    [sphereMenu removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
