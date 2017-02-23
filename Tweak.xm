#import <SpringBoard/SpringBoard.h>
%hook SpringBoard

    - (void)applicationDidFinishLaunching:(UIApplication *)application {
        %orig;
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert" message:@"thanks wizage" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        [alert addAction:defaultAction];
        [self.window.rootViewController presentViewController:alert animated:YES completion:nil];
    }

%end