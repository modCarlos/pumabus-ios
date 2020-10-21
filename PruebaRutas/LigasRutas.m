//
//  LigasRutas.m
//  PruebaRutas
//
//  Created by UNAM Mobile on 15/03/13.
//  Copyright (c) 2013 UnamMobiles. All rights reserved.
//

#import "LigasRutas.h"
#import "AppDelegate.h"
#import "ListaRutas.h"

@interface LigasRutas ()

@end

@implementation LigasRutas

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
    
    appDelegate =(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    [imageRuta setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%da.png",appDelegate.celda+1]]];
    
    
    }

-(IBAction)MostrarRuta:(id)sender
{
    [imageMapa setImage:nil];
    
    appDelegate =(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    [imageRuta setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%da.png",appDelegate.celda+1]]];
}

-(IBAction)MostrarMapa:(id)sender
{
    [imageRuta setImage:nil];
    
    appDelegate =(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    [imageMapa setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%db.png",appDelegate.celda+1]]];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
