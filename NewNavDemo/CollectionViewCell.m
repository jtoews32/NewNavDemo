//
//  CollectionViewCell.m
//  NewNavDemo
//
//  Created by Jon Toews on 9/18/15.
//  Copyright © 2015 David Rowland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollectionViewCell.h"




@implementation CollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor]; // [UIColor colorWithWhite:0.85f alpha:1.0f];
    }
    return self;
}


@end