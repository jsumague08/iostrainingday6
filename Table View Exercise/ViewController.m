//
//  ViewController.m
//  Table View Exercise
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewController.h"
#import "Cell/MyTableViewCell.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (strong,nonatomic) NSString *type;
@property (strong,nonatomic) UIColor *color;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.myTableView registerNib:[UINib nibWithNibName:@"MyTableViewCell" bundle:nil] forCellReuseIdentifier:@"MyCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return 20;
}

- (MyTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];

    if (indexPath.row % 2) {
        cell.rowLabel.text = @"Even";
        cell.backgroundColor = [UIColor blueColor];
    }
    else {    
        cell.rowLabel.text = @"Odd";
        cell.backgroundColor  = [UIColor redColor];
    }
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row % 2) {
        self.type = @"Even";
        self.color = [UIColor blueColor];
    }
    else {
        self.type = @"Odd";
        self.color = [UIColor redColor];
    }
    
    [self performSegueWithIdentifier:@"SecondPageSegue" sender:self];
    [self.myTableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"SecondPageSegue"]) {
        SecondViewController *vc = [segue destinationViewController];
        vc.type = self.type;
        vc.color = self.color;
    }
}


@end
