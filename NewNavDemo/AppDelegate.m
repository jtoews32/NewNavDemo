#import "AppDelegate.h"
#import "MasterViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


  //Create the window directly. There is no MainWindow.xib file
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  MasterViewController *masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController_iPhone" bundle:nil];
    
  //Create the navigation controller and make the master view controller its root
  self.navigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
    
   UIBarButtonItem *backButton=[[UIBarButtonItem alloc] init];
   backButton.title = @"Back";
    self.navigationController.navigationItem.backBarButtonItem = backButton;
    
    
    
  //Install the navigation controller
  self.window.rootViewController = self.navigationController;
  [self.window makeKeyAndVisible];
  return YES;
}

+(AppDelegate*) get {
    return (AppDelegate*)[[UIApplication sharedApplication] delegate];
}




- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
