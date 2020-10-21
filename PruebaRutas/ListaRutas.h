//
//  ListaRutas.h
//  PruebaRutas
//
//  Created by César Aguirre Pineda on 12/03/13.
//  Copyright (c) 2013 UnamMobiles. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppDelegate;

@interface ListaRutas : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
   IBOutlet UITableView *tableRutas;
    NSArray *datos;
    NSArray *imagenesRutas;
    AppDelegate *appDelegate;
}

@property(nonatomic, retain)IBOutlet UITableView *tableRutas;

@end
