//
//  AppDelegate.h
//  AppList
//
//  Created by Hugo Luiz Chimello on 2/25/15.
//  Copyright (c) 2015 Hugo Luiz Chimello. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *listaNomes;
@property (strong, nonatomic) NSMutableArray *listaCategorias;
@property (strong, nonatomic) NSMutableArray *listaImagens;

@end

