//
//  ViewController.m
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textNome, textCategoria;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [textNome becomeFirstResponder];
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
//    table = [TableViewController alloc];
//    if (textNome.text != nil && textCategoria.text != nil) {
//        [[[table init] listaNome] addObject:textNome.text];
////        [table.listaNome addObject:textNome.text];
//        [table.listaCategoria addObject: textCategoria.text];
//    }
//    NSLog(@"%@", [table.listaNome lastObject]);
    
    [appDelegate.listaNomes addObject:textNome.text];
    [appDelegate.listaCategorias addObject:textCategoria.text];
    
//    Implementar imagem.
    [appDelegate.listaImagens addObject:@"facebook.png"];
    
    NSLog(@"%@", [appDelegate.listaNomes lastObject]);
    
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [textNome resignFirstResponder];
    [textCategoria resignFirstResponder];

}

- (IBAction)btnVoltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
