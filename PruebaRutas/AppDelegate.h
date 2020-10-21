//
//  AppDelegate.h
//  PruebaRutas
//
//  Created by Luis Rodrigo on 2/21/13.
//  Copyright (c) 2013 Luis Rodrigo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) NSArray *arreglo;

@property int celda;

@end
