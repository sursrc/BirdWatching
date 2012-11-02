#import "AddSightingViewController.h"

@implementation AddSightingViewController

@synthesize birdNameInput = _birdNameInput, locationInput = _locationInput, delegate = _delegate;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.birdNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)done:(id)sender {
    
    [[self delegate] addSightingViewControllerDidFinish:self name:self.birdNameInput.text location:self.locationInput.text];
}

- (IBAction)cancel:(id)sender {
    
    [[self delegate] addSightingViewControllerDidCancel:self];
}

- (void)viewDidUnload
{
    [self setBirdNameInput:nil];
    [self setLocationInput:nil];
    [super viewDidUnload];
}
@end