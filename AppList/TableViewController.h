//
//  TableViewController.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "TableViewCell.h"

@interface TableViewController : UITableViewController

{
//    NSArray *listaNome;
//    NSArray *listaCategoria;
//    NSArray *listaFoto;
    //
    //
    
    NSMutableArray *listaNome;
    NSMutableArray *listaCategoria;
    NSMutableArray *listaFoto;
}
- (IBAction)cadastro:(id)sender;

//@property NSArray *listaNome;
//@property NSArray *listaCategoria;
//@property NSArray *listaFoto;

@property NSMutableArray *listaNome;
@property NSMutableArray *listaCategoria;
@property NSMutableArray *listaFoto;


@end
