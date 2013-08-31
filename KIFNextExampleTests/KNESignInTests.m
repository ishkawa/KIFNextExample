#import <KIF.h>
#import "KIFTestCase.h"
#import "KIFUITestActor+KNEAdditions.h"

@interface KNESignInTests : KIFTestCase

@end

@implementation KNESignInTests

- (void)beforeEach
{
    [tester presentSignInViewController];
}

- (void)testSuccessfulSignIn
{
    [tester enterText:@"user@example.com" intoViewWithAccessibilityLabel:@"Email"];
    [tester enterText:@"thisismypassword" intoViewWithAccessibilityLabel:@"Password"];
    
    [tester tapViewWithAccessibilityLabel:@"SignIn"];
}

- (void)testInvalidUsernameSignIn
{
    [tester enterText:@"thisismypassword" intoViewWithAccessibilityLabel:@"Password"];
    
    [tester tapViewWithAccessibilityLabel:@"SignIn"];
    [tester tapViewWithAccessibilityLabel:@"OK"];
    [tester tapViewWithAccessibilityLabel:@"Cancel"];
}

- (void)testInvalidPasswordSignIn
{
    [tester enterText:@"user@example.com" intoViewWithAccessibilityLabel:@"Email"];
    
    [tester tapViewWithAccessibilityLabel:@"SignIn"];
    [tester tapViewWithAccessibilityLabel:@"OK"];
    [tester tapViewWithAccessibilityLabel:@"Cancel"];
}

@end
