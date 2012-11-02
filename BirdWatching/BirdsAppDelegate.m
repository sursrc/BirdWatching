#import "BirdsAppDelegate.h"
#import "BirdSightingDataController.h"
#import "BirdsMasterViewController.h"

@implementation BirdsAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    BirdsMasterViewController *firstViewController = (BirdsMasterViewController *)[[navigationController viewControllers] objectAtIndex:0];
    
    BirdSightingDataController *aDataController = [[BirdSightingDataController alloc] init];
    firstViewController.dataController = aDataController;
    return YES;
}
@end