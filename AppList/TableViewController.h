//
//  TableViewController.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "TableViewCell.h"
#include "AppViewController.h"

@interface TableViewController : UITableViewController

- (IBAction)cadastro:(id)sender;

@property (nonatomic) NSMutableArray *listaNome;
@property (nonatomic) NSMutableArray *listaCategoria;
@property (nonatomic) NSMutableArray *listaFoto;


@end
