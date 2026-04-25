#import <UIKit/UIKit.h>

%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application {
    %orig;
    [NSTimer scheduledTimerWithTimeInterval:2.0 repeats:YES block:^(NSTimer *timer) {
        dispatch_async(dispatch_get_main_queue(), ^{
            UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(arc4random_uniform(300), -50, 60, 60)];
            l.text = @"67";
            l.font = [UIFont boldSystemFontOfSize:40];
            l.textColor = [UIColor redColor];
            [[UIApplication sharedApplication].keyWindow addSubview:l];
            [UIView animateWithDuration:5.0 animations:^{
                l.frame = CGRectMake(l.frame.origin.x, 1000, 60, 60);
            } completion:^(BOOL f) { [l removeFromSuperview]; }];
        });
    });
}
%end
