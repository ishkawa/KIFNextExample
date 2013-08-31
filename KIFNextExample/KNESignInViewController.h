#import <UIKit/UIKit.h>

@interface KNESignInViewController : UITableViewController

@property (nonatomic, strong) IBOutlet UITextField *emailTextField;
@property (nonatomic, strong) IBOutlet UITextField *passwordTextField;

- (IBAction)signIn;
- (IBAction)cancel;

@end
