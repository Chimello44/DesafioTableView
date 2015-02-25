//
//  TableViewController.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "AppViewController.h"

@interface TableViewController : UITableViewController

{
    NSArray *listaNome;
    NSArray *listaCategoria;
    NSArray *listaFoto;
}
- (IBAction)cadastro:(id)sender;

@property NSArray *listaNome;
@property NSArray *listaCategoria;
@property NSArray *listaFoto;
@end
