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
#include "AppDelegate.h"

//@protocol TDelegate <NSObject>

//@end

@interface TableViewController : UITableViewController
{
    AppDelegate *appDelegate;
}

- (IBAction)cadastro:(id)sender;

@end
