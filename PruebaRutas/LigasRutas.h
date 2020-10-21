//
//  LigasRutas.h
//  PruebaRutas
//
//  Created by UNAM Mobile on 15/03/13.
//  Copyright (c) 2013 UnamMobiles. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppDelegate;

@interface LigasRutas : UIViewController
{
    IBOutlet UIButton *ruta;
    IBOutlet UIButton *mapa;
    IBOutlet UIImageView *imageRuta;
    IBOutlet UIImageView *imageMapa;
    AppDelegate *appDelegate;
}

-(IBAction)MostrarRuta:(id)sender;
-(IBAction)MostrarMapa:(id)sender;

@end
