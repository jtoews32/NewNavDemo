#include "PentagonViewController.h"

@implementation PentagonViewController

@synthesize label;
@synthesize button;
@synthesize codeCustomView;





- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.codeCustomView = [[MyDrawingView alloc] initWithFrame:self.view.frame];
    self.codeCustomView = codeCustomView;
    [self.view addSubview:codeCustomView];
    
}




@end

