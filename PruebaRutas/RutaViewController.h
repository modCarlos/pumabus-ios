//
//  RutaViewController.h
//  PruebaRutas
//
//  Created by Luis Rodrigo on 2/27/13.
//  Copyright (c) 2013 Luis Rodrigo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppDelegate;

@interface RutaViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *datosRuta;
    NSMutableArray *tableData;
    NSMutableArray *arreglo;
    NSMutableArray *filtro;
    AppDelegate *appDelegate;
    
}
@property(nonatomic, retain)IBOutlet UITableView *datosRuta;
@property(nonatomic, retain)NSMutableArray *arreglo;




@end
