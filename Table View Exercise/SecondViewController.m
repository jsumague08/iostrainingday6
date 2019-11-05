//
//  SecondViewController.m
//  Table View Exercise
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

- (IBAction)didSelectClose:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.secondPageView.backgroundColor = self.color;
    self.secondPageLabel.text = self.type;
}

- (IBAction)didSelectClose:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
