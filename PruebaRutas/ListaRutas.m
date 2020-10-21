//
//  ListaRutas.m
//  PruebaRutas
//
//  Created by César Aguirre Pineda on 12/03/13.
//  Copyright (c) 2013 UnamMobiles. All rights reserved.
//

#import "ListaRutas.h"
#import "SimpleTableCell.h"
#import "LigasRutas.h"
#import "AppDelegate.h"

@interface ListaRutas ()

@end

@implementation ListaRutas

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    datos=[[NSArray alloc] initWithObjects:@"Ruta 1",@"Ruta 2",@"Ruta 3",@"Ruta 4",@"Ruta 5",@"Ruta 6",@"Ruta 7",@"Ruta 8",@"Ruta 9",@"Ruta 10",@"Ruta 11",@"Ruta 12", nil];
    
    imagenesRutas=[[NSArray alloc] initWithObjects:@"1_positivo.png",@"2_positivo.png",@"3_positivo.png",@"4_positivo.png",@"5_positivo.png",@"6_positivo.png",@"7_positivo.png",@"8_positivo.png",@"9_positivo.png",@"10_positivo.png",@"11_positivo.png",@"12_positivo.png", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [datos count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath; {
    static NSString * CellIdentifier = @"Cell";
    UITableViewCell * cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier];
    }
    //cell.textLabel.text = [datos objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:[imagenesRutas objectAtIndex:indexPath.row]];
    cell.textLabel.numberOfLines = 2;
    cell.textLabel.lineBreakMode = UILineBreakModeTailTruncation;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    int selectedRow = indexPath.row;
    NSLog(@"touch on row %d", selectedRow);
    appDelegate=(AppDelegate *) [[UIApplication sharedApplication] delegate];
    appDelegate.celda=selectedRow;
    LigasRutas *ligRuta=[[LigasRutas alloc] initWithNibName:@"LigasRutas" bundle:nil];
    [self.navigationController pushViewController:ligRuta animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
