//
//  AppViewController.m
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import "AppViewController.h"

@interface AppViewController ()

@end

@implementation AppViewController

- (void)viewDidLoad {
   // _appDetail = [[NSArray alloc]init];
//    
    _appNome.text=_appDetail[0];
    _appCategoria.text=_appDetail[1];
    [_imgApp setImage:[UIImage imageNamed: _appDetail[2]]];
    NSLog(@" %@", _appDetail[0]);
     [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)voltarApp:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
