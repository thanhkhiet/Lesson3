//
//  ViewController.m
//  fun_controls4
//
//  Created by ThanhKhiet on 7/17/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nametextField;
@property (weak, nonatomic) IBOutlet UITextField *numbertextField;
@property (weak, nonatomic) IBOutlet UILabel *sildelabel;
@property (weak, nonatomic) IBOutlet UISwitch *left;
@property (weak, nonatomic) IBOutlet UISwitch *right;
@property (weak, nonatomic) IBOutlet UIButton *dosomething;

@end

@implementation ViewController
@synthesize numbertextField ;
@synthesize nametextField ;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sildelabel.text= @"50";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender {
    [self.nametextField resignFirstResponder];
    [self.numbertextField resignFirstResponder];
}
- (IBAction)sliderchange:(UISlider *)sender {
    int progress = lround(sender.value);
    self.sildelabel.text = [NSString stringWithFormat:@"%d",progress];
    
}
- (IBAction)switchchange:(UISwitch *)sender {
    BOOL setting = sender.isOn ;
    [self.left setOn:setting animated:YES];
    [self.right setOn:setting animated:YES];
}
- (IBAction)togglecontrols:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex ==0) {
        self.left.hidden = NO ;
        self.right.hidden = NO ;
        self.dosomething.hidden=YES;
        
    }else {
        self.left.hidden=YES ;
        self.right.hidden=YES;
        self.dosomething.hidden=NO ;
        
    }
}
- (IBAction)buttonpressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure ?"
                                  delegate:self
                                  cancelButtonTitle:@"No way !"
                                  destructiveButtonTitle:@"Yes, I'm sure !"otherButtonTitles: nil
                                  ];
    [actionSheet showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString *msg = nil ;
        if ([self.nametextField.text length] > 0) {
            msg = [NSString stringWithFormat:@"you can breathe easy , %@ , everything went OK .", self.nametextField.text];
        }else {
            msg = @"you can breathe easy , everything went OK." ;
        }
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Something was done" message:msg delegate:self cancelButtonTitle:@"Phew" otherButtonTitles: nil
                              
                              ];
        [alert show];
    }
}

@end
