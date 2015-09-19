//
//  CustomScrollViewController.h
//  NewNavDemo
//
//  Created by Jon Toews on 9/19/15.
//  Copyright © 2015 David Rowland. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <UIKit/UIKit.h>
#import "CustomScrollView.h"


@interface CustomScrollViewController : UIViewController {
    CustomScrollView *customView;
}


@property (strong, nonatomic) CustomScrollView *customView;


@end