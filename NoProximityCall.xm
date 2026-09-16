#import <UIKit/UIKit.h>

%hook UIDevice

- (void)setProximityMonitoringEnabled:(BOOL)enabled
{
    // Always disable proximity monitoring.
    %orig(NO);
}

- (BOOL)isProximityMonitoringEnabled
{
    // Always report proximity monitoring as disabled.
    return NO;
}

%end
