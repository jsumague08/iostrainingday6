//
//  SecondViewController.h
//  Table View Exercise
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *secondPageLabel;
@property (weak, nonatomic) IBOutlet UIView *secondPageView;
@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) UIColor *color;


@end


