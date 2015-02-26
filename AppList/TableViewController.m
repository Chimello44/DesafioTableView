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
    listaNome = [[NSMutableArray alloc]init];
    listaCategoria = [[NSMutableArray alloc]init];
    listaFoto = [[NSMutableArray alloc]init];
    
    
    [listaNome insertObject:@"Waze" atIndex:0];
    [listaNome insertObject:@"WhatsApp" atIndex:1];
    [listaNome insertObject:@"Facebook" atIndex:2];
    
    [listaCategoria insertObject: @"Navegação" atIndex:0];
    [listaCategoria insertObject: @"Comunicação" atIndex:1];
    [listaCategoria insertObject: @"Entretenimento" atIndex:2];
    
    [listaFoto insertObject:@"waze.jpg" atIndex:0];
    [listaFoto insertObject:@"whatsapp.jpg" atIndex:1];
    [listaFoto insertObject:@"facebook.png" atIndex:2];
    
//    listaNome = @[@"Waze", @"WhatsApp", @"Facebook"];
//    listaCategoria = @[@"Navegação", @"Comunicacação", @"Entretenimento"];
//    listaFoto = @[@"waze.jpg", @"whatsapp.jpg", @"facebook.png"];
    
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    NSLog(@"%lu", listaNome.count);
    return listaNome.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"App" forIndexPath:indexPath];
    
    long row = [indexPath row];
    cell.LBLNome.text = [listaNome objectAtIndex:row];
    cell.LBLcategoria.text = [listaCategoria objectAtIndex:row];
    [cell.imgApp setImage:[UIImage imageNamed: [listaFoto objectAtIndex:row]]];
    
    return cell;
}

//// metodo que permite a remoção de dados
//
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    [listaNome removeObjectAtIndex:indexPath.row];
//    [tableView reloadData];
//
//}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
    //     Delete the row from the data source
        [listaFoto removeObjectAtIndex: indexPath.row];
        [listaNome removeObjectAtIndex: indexPath.row];
        [listaCategoria removeObjectAtIndex: indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
      //   Create a new instance of the appropriate class, insert it //into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
//    
//    id buffer;
//    buffer = [listaNome objectAtIndex:fromIndexPath.row];
//    [listaNome removeObjectAtIndex: fromIndexPath.row];
//    [listaNome insertObject:buffer atIndex:toIndexPath.row];
//
//    buffer = [listaCategoria objectAtIndex:fromIndexPath.row];
//    [listaCategoria removeObjectAtIndex: fromIndexPath.row];
//    [listaCategoria insertObject:buffer atIndex:toIndexPath.row];
//    
//    buffer = [listaFoto objectAtIndex:fromIndexPath.row];
//    [listaFoto removeObjectAtIndex: fromIndexPath.row];
//    [listaFoto insertObject:buffer atIndex:toIndexPath.row];
//    
//    

    [self.listaNome exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex: toIndexPath.row];
    [self.listaCategoria exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex: toIndexPath.row];
    [self.listaFoto exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex: toIndexPath.row];
    
    [self.tableView reloadData];

    
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//    if([[segue identifier] isEqualToString:@"App"]){
//        
//        AppViewController *appViewController =[segue destinationViewController];
//        NSIndexPath *myIndexPath =[self.tableView indexPathForSelectedRow];
//        
//        long row=[myIndexPath row];
//        appViewController.appDetail=@[listaNome[row],listaCategoria[row], listaFoto[row]];
//    }
    if([[segue identifier] isEqualToString:@"appDetail"]){
        
        AppViewController *appViewController =[segue destinationViewController];
        NSIndexPath *myIndexPath =[self.tableView indexPathForSelectedRow];
        
        long row=[myIndexPath row];
        appViewController.appDetail=@[[listaNome objectAtIndex:row],[listaCategoria objectAtIndex:row], [listaFoto objectAtIndex:row]];
        
    }
    
}


- (IBAction)cadastro:(id)sender {
//    TableViewController *tela= [[TableViewController alloc]init];
//    [self.navigationController pushViewController:tela animated:YES];
}
@end
