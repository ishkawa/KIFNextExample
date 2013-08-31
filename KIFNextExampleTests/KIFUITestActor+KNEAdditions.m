#import "KIFUITestActor+KNEAdditions.h"

@implementation KIFUITestActor (KNEAdditions)

- (void)presentSignInViewController
{
    [self tapViewWithAccessibilityLabel:@"SignIn"];
}

@end
