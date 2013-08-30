//
//  TLViewController.m
//  WhereIsTony
//
//  Created by Tony DiPasquale on 8/29/13.
//  Copyright (c) 2013 Tony DiPasquale. All rights reserved.
//

#import "TLViewController.h"

@interface TLViewController ()

@property (strong, nonatomic) NSDate *arrivalDate;

@end

@implementation TLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.messageLabel setAlpha:0.0];

    self.arrivalDate = [NSDate dateWithTimeIntervalSince1970:1379154600];

    if ([self.arrivalDate timeIntervalSinceNow] <= 0) {
        self.messageLabel.text = @"In San Francisco!";
        return;
    }

    [self performSelector:@selector(calculateTimeIntervalOfTonysArrivalIntoSanFranciscoAndDisplaySaidTimeIntervalIntoAppropriateLabelsContainedWithinTheView)
               withObject:nil
               afterDelay:1];
}

- (void)calculateTimeIntervalOfTonysArrivalIntoSanFranciscoAndDisplaySaidTimeIntervalIntoAppropriateLabelsContainedWithinTheView
{
    NSTimeInterval time = [self.arrivalDate timeIntervalSinceNow];
    NSInteger days = floor(time / 86400.0);
    time -= (days * 86400);
    NSInteger hours = floor(time / 3600.0);
    time -= (hours * 3600);
    NSInteger minutes = floor(time / 60);
    NSInteger seconds = time - (minutes * 60);

    self.daysLabel.text = [NSString stringWithFormat:@"%d", days];
    self.hoursLabel.text = [NSString stringWithFormat:@"%d", hours];
    self.minutesLabel.text = [NSString stringWithFormat:@"%d", minutes];
    self.secondsLabel.text = [NSString stringWithFormat:@"%d", seconds];

    [self performSelector:@selector(calculateTimeIntervalOfTonysArrivalIntoSanFranciscoAndDisplaySaidTimeIntervalIntoAppropriateLabelsContainedWithinTheView)
               withObject:nil
               afterDelay:1];
}

- (IBAction)whereIsAction:(id)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        [self.messageLabel setAlpha:1.0];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 delay:1.5 options:0 animations:^{
            [self.messageLabel setAlpha:0.0];
        } completion:nil];
    }];
}

@end
