//
//  TableViewController.m
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController()

{
    UILongPressGestureRecognizer * editarTableLongPressGestureRecognizer;
    UITapGestureRecognizer * tapGestureRecognizer;
}

-(void)gerenciarGestureRecognizer:(UIGestureRecognizer *)sender;

@end

@implementation TableViewController

//@synthesize listaCategoria, listaFoto, listaNome;

- (void)viewDidLoad
{
    // GESTURE ALLOC
    
    
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    
    //aloquei aqui os metodos de toque do app que chamam uma função que gerencia para o evento @selector (gerenciarGestureRecognizer);
    
    editarTableLongPressGestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(gerenciarGestureRecognizer:)];
    [editarTableLongPressGestureRecognizer setMinimumPressDuration:1.5];
    [[self view] addGestureRecognizer:editarTableLongPressGestureRecognizer];
    tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gerenciarGestureRecognizer:)];
    [tapGestureRecognizer setNumberOfTapsRequired:1];
    [[self view] addGestureRecognizer:tapGestureRecognizer];
    
    // GESTURE ALLOC
    

    
//    listaNome = @[@"Waze", @"WhatsApp", @"Facebook"];
//    listaCategoria = @[@"Navegação", @"Comunicacação", @"Entretenimento"];
//    listaFoto = @[@"waze.jpg", @"whatsapp.jpg", @"facebook.png"];
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) prefersStatusBarHidden
{
    return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    NSLog(@"%lu", [appDelegate.listaNomes count]);
    return [appDelegate.listaNomes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"App" forIndexPath:indexPath];
    
    long row = [indexPath row];

    cell.LBLNome.text = [appDelegate.listaNomes objectAtIndex:row];
    cell.LBLcategoria.text = [appDelegate.listaCategorias objectAtIndex:row];
    [cell.imgApp setImage:[UIImage imageNamed: [appDelegate.listaImagens objectAtIndex:row]]];
    
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
        [appDelegate.listaImagens removeObjectAtIndex: indexPath.row];
        [appDelegate.listaNomes removeObjectAtIndex: indexPath.row];
        [appDelegate.listaCategorias removeObjectAtIndex: indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
      //   Create a new instance of the appropriate class, insert it //into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    
    id buffer;
    buffer = [appDelegate.listaNomes objectAtIndex:fromIndexPath.row];
    [appDelegate.listaNomes removeObjectAtIndex: fromIndexPath.row];
    [appDelegate.listaNomes insertObject:buffer atIndex:toIndexPath.row];

    buffer = [appDelegate.listaCategorias objectAtIndex:fromIndexPath.row];
    [appDelegate.listaCategorias removeObjectAtIndex: fromIndexPath.row];
    [appDelegate.listaCategorias insertObject:buffer atIndex:toIndexPath.row];
    
    buffer = [appDelegate.listaImagens objectAtIndex:fromIndexPath.row];
    [appDelegate.listaImagens removeObjectAtIndex: fromIndexPath.row];
    [appDelegate.listaImagens insertObject:buffer atIndex:toIndexPath.row];
    
    
    [appDelegate.listaNomes exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex: toIndexPath.row];
    [appDelegate.listaCategorias exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex: toIndexPath.row];
    [appDelegate.listaImagens exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex: toIndexPath.row];
    
    [self.tableView reloadData];
/*
    [self setEditing:NO];
    if(self.tableView.editing == YES)
        [self.tableView setEditing:NO];
    else
        [self.tableView setEditing: YES];
 */
    
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
        appViewController.appDetail=@[[appDelegate.listaNomes objectAtIndex:row],[appDelegate.listaCategorias objectAtIndex:row], [appDelegate.listaImagens objectAtIndex:row]];
        
    }
    
}

- (IBAction)btnVoltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)gerenciarGestureRecognizer:(UIGestureRecognizer *)sender
{
    if([sender isKindOfClass:[UILongPressGestureRecognizer class]])
    {
        if([sender state] == UIGestureRecognizerStateEnded)
        {
            if([[self tableView] isEditing])
            {
                [[self tableView] setEditing:NO];
            }
            else
            {
                [[self tableView] setEditing:YES];
            }
        }
    }
    else if([sender isKindOfClass:[UITapGestureRecognizer class]])
    {
        NSLog(@"\n\n\n RODEI TAP!!!\n\n");
    }
}


@end
