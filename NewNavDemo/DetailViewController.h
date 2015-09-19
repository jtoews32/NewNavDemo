//
//  DetailViewController.h
//  navDemo
//
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "TestProtocol.h"

//XXXXX
//import the header for your drawingview

@interface DetailViewController : UIViewController <WKNavigationDelegate, WKUIDelegate, TestProtocol>

//XXXXX
//declare your drawing view

@end
