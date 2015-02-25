//
//  TableViewController.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableViewController : UITableViewController

{
    NSMutableArray *listaNome;
    NSMutableArray *listaCategoria;
    NSMutableArray *listaFoto;
}
- (IBAction)cadastro:(id)sender;

@property NSMutableArray *listaNome;
@property NSMutableArray *listaCategoria;
@property NSMutableArray *listaFoto;
@end
