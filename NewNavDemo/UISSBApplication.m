#import <Foundation/Foundation.h>
#include "UISSBApplication.h"

@implementation UISSBApplication 

- (void)sendEvent:(UIEvent *)event {
    NSLog(@"UI Event did Happen!");
    [super sendEvent:event];
}

@end