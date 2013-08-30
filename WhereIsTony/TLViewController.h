//
//  TLViewController.h
//  WhereIsTony
//
//  Created by Tony DiPasquale on 8/29/13.
//  Copyright (c) 2013 Tony DiPasquale. All rights reserved.
//

@interface TLViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *daysLabel;
@property (weak, nonatomic) IBOutlet UILabel *hoursLabel;
@property (weak, nonatomic) IBOutlet UILabel *minutesLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondsLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *whereIsButton;

- (IBAction)whereIsAction:(id)sender;

@end
