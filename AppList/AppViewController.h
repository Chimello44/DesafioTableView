//
//  AppViewController.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"


@interface AppViewController : UIViewController

@property (strong,nonatomic) NSArray *appDetail;

@property (weak, nonatomic) IBOutlet UILabel *appNome;
@property (weak, nonatomic) IBOutlet UILabel *appCategoria;
@property (weak, nonatomic) IBOutlet UIImageView *imgApp;
- (IBAction)voltarApp:(id)sender;


@end
