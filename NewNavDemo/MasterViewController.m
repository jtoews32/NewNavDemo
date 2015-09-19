//
//  MasterViewController.m
//  navDemo
//
//

#import "AppDelegate.h"

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "PentagonViewController.h"
#import "CollectionViewController.h"
#import "CustomScrollViewController.h"

//Private interface
@interface MasterViewController()

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) PentagonViewController *pentagonViewController;
@property (strong, nonatomic) CollectionViewController *collectionViewController;
@property (strong, nonatomic) CustomScrollViewController *customScrollViewController;

@end


@implementation MasterViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
       self.title = NSLocalizedString(@"Master", @"");
  }
  return self;
}


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
 
  

    
    
    
}

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

- (NSUInteger)supportedInterfaceOrientations
{
  //These should agree with those in the Info.plist file.
  return UIInterfaceOrientationPortrait
  |UIInterfaceOrientationLandscapeLeft
  |UIInterfaceOrientationLandscapeRight;
}

#pragma mark table view data source protocol
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 4;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
  }
  
  // Configure the cell.
  //XXXXX put in code for each view controller you add to this table view.
  if (indexPath.row == 0)
    cell.textLabel.text = NSLocalizedString(@"Pentagon View", @"");
    
  if (indexPath.row == 1)
    cell.textLabel.text = NSLocalizedString(@"MK Web View", @"");
 
  if (indexPath.row == 2)
    cell.textLabel.text = NSLocalizedString(@"Collection View", @"");
  
  if (indexPath.row == 3)
    cell.textLabel.text = NSLocalizedString(@"Scroller View", @"");
    
    
  return cell;
}


#pragma mark table view delegate protocol

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row == 0)
    {
        if (!self.pentagonViewController)
            self.pentagonViewController = [[PentagonViewController alloc] initWithNibName:nil bundle:nil];
        
      //  [self.navigationController pushViewController:self.pentagonViewController animated:YES];
        
        [[[AppDelegate get] navigationController] pushViewController:self.pentagonViewController animated:YES];
    }
    
    if (indexPath.row == 1)
    {
        if (!self.detailViewController)
            self.detailViewController = [[DetailViewController alloc] initWithNibName:nil bundle:nil];
       
        //[self.navigationController pushViewController:self.detailViewController animated:YES];
        
        
        [[[AppDelegate get] navigationController] pushViewController:self.detailViewController animated:YES];
    }
    
    if (indexPath.row == 2)
    {
        if (!self.collectionViewController)
            self.collectionViewController = [[CollectionViewController alloc] initWithNibName:nil bundle:nil];
        
   //     self.collectionViewController.view.backgroundColor = [UIColor greenColor];
        
        // [self.navigationController pushViewController:self.collectionViewController animated:YES];
        
        [[[AppDelegate get] navigationController] pushViewController:self.collectionViewController animated:YES];
    }
    
    
    if (indexPath.row == 3)
    {
        if (!self.customScrollViewController)
            self.customScrollViewController = [[CustomScrollViewController alloc] initWithNibName:nil bundle:nil];

       // [self.navigationController pushViewController:self.customScrollViewController animated:YES];
        
        [[[AppDelegate get] navigationController] pushViewController:self.customScrollViewController animated:YES];
    }
}


@end
