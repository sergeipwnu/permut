%hook SpringBoard

    - (void)applicationDidFinishLaunching:(UIApplication *)application {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert" message:@"thanks wizage" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    [presentViewController:alert animated:YES completion:nil];
    }

%end