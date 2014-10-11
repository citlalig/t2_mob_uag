//
//  AmigosView.h
//  t2_mob_uag
//
//  Created by Citlali Garcia on 10/10/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AmigosView : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedOption;
@property (strong, nonatomic) IBOutlet UITableView *tblAmigos;

- (IBAction)optionChanged:(id)sender;

@end
