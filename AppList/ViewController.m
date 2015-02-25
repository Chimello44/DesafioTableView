//
//  ViewController.m
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textNome, textCategoria;

- (void)viewDidLoad {
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

- (IBAction)cadastrar:(id)sender {
    [[table listaNome]addObject: textNome.text];
    [[table listaCategoria]addObject: textCategoria.text];
    NSLog(@"Foi");
}

- (IBAction)voltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end