//
//  DetailViewController.m
//  navDemo
//
//

#import "DetailViewController.h"


@implementation DetailViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{    
    
    [super viewDidLoad];
 
    WKWebViewConfiguration *conf = [[WKWebViewConfiguration alloc] init];

    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:conf];
    webView.navigationDelegate = self;
    
    NSURL *nsurl = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:nsurl];
    
    [webView loadRequest:request];
    [self.view addSubview:webView];
}

-(void)webView:(WKWebView *) webView didStartProvisionalNavigation:(WKNavigation *)navigation
{}

-(void)webView:(WKWebView *) webView didFinishNavigation:(WKNavigation *)navigation
{}

-(void) webView:(WKWebView *) webview didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error
{}




- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"WKWebView view", @"");
    }
    return self;
}
							

@end


