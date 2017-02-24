@interface SpringBoard

-(NSArray *)_rootViewControllers;

@end

%hook SpringBoard

    - (void)applicationDidFinishLaunching:(UIApplication *)application {
        %orig;
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert" message:@"thanks wizage" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        [alert addAction:defaultAction];
        [[self _rootViewControllers][0] presentViewController:alert animated:YES completion:nil];
    }

%end