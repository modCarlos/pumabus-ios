//
//  RutaViewController.m
//  PruebaRutas
//
//  Created by Luis Rodrigo on 2/27/13.
//  Copyright (c) 2013 Luis Rodrigo. All rights reserved.
//

#import "RutaViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"

@interface RutaViewController ()

@end

@implementation RutaViewController

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
    appDelegate =(AppDelegate *)[[UIApplication sharedApplication]delegate];
    // Do any additional setup after loading the view from its nib.
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"Rutas" ofType:@"plist"];
    tableData = [[NSMutableArray alloc]initWithContentsOfFile:myListPath];
    //NSLog(@"%@",tableData);
    filtro=[[NSMutableArray alloc]init];
    
        
for(int i=0; i<[appDelegate.arreglo count];i++)
{
    int val=[[appDelegate.arreglo objectAtIndex:i]intValue];
    [filtro addObject:[tableData objectAtIndex:val-1]];
}
NSLog(@"%@",filtro);
   
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [filtro count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
   
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    appDelegate =(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if( cell == nil )
    {
        NSLog(@"Cell Creation");
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
 
    //Set Data For each Cell
    
    cell.textLabel.text = [[filtro objectAtIndex:indexPath.row]objectForKey:@"estacion"];
    cell.imageView.image =[UIImage imageNamed:@"pin_icono_ra.png"];
    cell.detailTextLabel.text = [[[filtro objectAtIndex:indexPath.row]objectForKey:@"id"]stringValue];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
           
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
