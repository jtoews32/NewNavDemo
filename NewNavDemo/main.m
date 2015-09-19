//
//  main.m
//  NewNavDemo
//
//  Created by David Rowland on 10/12/14.
//  Copyright (c) 2014 David Rowland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
  @autoreleasepool {
      
      int returnValue;
      
      @try
      {
          returnValue = UIApplicationMain(argc, argv, @"UISSBApplication", NSStringFromClass([AppDelegate class]));
      }
      @catch (NSException* exception)
      {
          NSObject *n1 = [exception description];
          NSObject *n2 = [exception callStackSymbols];
          
         // @throw exception;
      }
  }
}
