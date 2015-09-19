#include <UIKit/UIKit.h>
#include "MyDrawingView.h"

@class MyDrawingView;

@interface PentagonViewController : UIViewController {
    MyDrawingView *codeCustomView;
}

@property (strong, nonatomic) UIButton *button;
@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) MyDrawingView *codeCustomView;

@end
