//
//  ViewController.m
//  ButtonLeftRight
//
//  Created by ThanhKhiet on 7/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plaintext = [NSString stringWithFormat:@"%@ button pressed.", title];
    // _status_label.text = plaintext;
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plaintext];
    
    NSDictionary *attributes =
  @{
    NSFontAttributeName: [UIFont boldSystemFontOfSize:_status_label.font.pointSize]
        
    };
    NSRange nameRange = [plaintext rangeOfString:title];
    [styledText setAttributes:attributes range:nameRange];
    _status_label.attributedText = styledText;
}
@end
