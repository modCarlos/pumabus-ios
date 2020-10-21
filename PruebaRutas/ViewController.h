//
//  ViewController.h
//  PruebaRutas
//
//  Created by Luis Rodrigo on 2/21/13.
//  Copyright (c) 2013 Luis Rodrigo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppDelegate;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
{
    IBOutlet UIButton *ir;
    IBOutlet UITextField *inicio; // CAMBIAR POR TXTFIELD Y TXTFIELD2
    IBOutlet UITextField *fin;
    IBOutlet UILabel *ruta;
    NSMutableArray *elementos;
    NSMutableArray *reverse;
    AppDelegate *appDelegate;
    
    
    ///PARTE DEL AUTOCOMPLETADO///
    
    NSMutableArray *autoCompleteArray;
	NSMutableArray *elementArray, *lowerCaseElementArray;
	IBOutlet UITextField *txtField;
    IBOutlet UITextField *txtField2;
	UITableView *autoCompleteTableView;
    UITableView *autoCompleteTableView2;
    int var;
    
    ///plist///
    NSMutableArray *tableData;
    IBOutlet UILabel *l1;
    IBOutlet UILabel *l2;
    
    //aux
    int ini;
    int fini;
    
    int NodInic;
    int NodFina;
    
    
    
}
@property NSMutableArray *elementos;
@property (nonatomic,strong) NSMutableArray *reverse;

-(IBAction)buscar:(id)sender;
-(IBAction)esconder:(id)sender;
-(void)iniciraMatrizZ;
-(IBAction)saludo:(id)sender;
-(IBAction)MostrarMap:(id)sender;




@end
