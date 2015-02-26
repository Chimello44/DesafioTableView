//
//  TableViewCell.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *LBLcategoria;

@property (weak, nonatomic) IBOutlet UILabel *LBLNome;
@property (weak, nonatomic) IBOutlet UIImageView *imgApp;

@end
