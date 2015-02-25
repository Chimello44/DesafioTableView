//
//  ViewController.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"

@interface ViewController : UIViewController
{
   TableViewController *table;
}
@property (weak, nonatomic) IBOutlet UITextField *textNome;
@property (weak, nonatomic) IBOutlet UITextField *textCategoria;
- (IBAction)cadastrar:(id)sender;
- (IBAction)voltar:(id)sender;

@end
