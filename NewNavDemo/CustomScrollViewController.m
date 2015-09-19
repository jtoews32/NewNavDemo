//
//  CustomScrollViewController.m
//  NewNavDemo
//
//  Created by Jon Toews on 9/19/15.
//  Copyright © 2015 David Rowland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomScrollViewController.h"


@implementation CustomScrollViewController

@synthesize customView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.customView = [[CustomScrollView alloc] initWithFrame:self.view.frame];
    self.customView = customView;
    [self.view addSubview:customView];
    
}

@end