#import "KNESignInViewController.h"

@implementation KNESignInViewController

- (void)signIn
{
    if (![self.emailTextField.text length] || ![self.passwordTextField.text length]) {
        [self showAlertView];
        return;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)showAlertView
{
    UIAlertView *alertView = [[UIAlertView alloc] init];
    alertView.title = @"Invalid value";
    alertView.message = @"Please enter your email and password.";
    [alertView addButtonWithTitle:@"OK"];
    [alertView show];
}

@end
