//
//  ViewController.h
//  ButtonLeftRight
//
//  Created by ThanhKhiet on 7/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *status_label;


@end
