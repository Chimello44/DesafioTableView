//
//  TableViewController.m
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize listaCategoria, listaFoto, listaNome;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    listaNome = @[@"Waze",@"Facebook",@"WhatsApp"];
    listaCategoria = @[@"Naveagação", @"Entretenimento", @"Comunicação"];
    //listaFoto

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return listaNome.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"App" forIndexPath:indexPath];
    
    long row = [indexPath row];
    
    cell.LBLcategoria.text =listaCategoria[row];
    cell.LBLnome.text=listaNome[row];
    //cell.img
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue identifier] isEqualToString:@"App"]){
        AppViewController *appViewController =[segue destinationViewController];
        NSIndexPath *myIndexPath =[self.tableView indexPathForSelectedRow];
        
        long row=[myIndexPath row];
        appViewController.appDetail=@[listaNome[row],listaCategoria[row]];
    }
    
    
}


- (IBAction)cadastro:(id)sender {
//    TableViewController *tela= [[TableViewController alloc]init];
//    [self.navigationController pushViewController:tela animated:YES];
}
@end
