//
//  ViewController.m
//  KeyboardShortcutManagerDemo
//
//  Created by 杨晴贺 on 19/02/2017.
//  Copyright © 2017 Silence. All rights reserved.
//

#import "ViewController.h"
#import "SIKeyboardShortcutManager.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if TARGET_OS_SIMULATOR
    [SIKeyboardShortcutManager sharedManager].enabled = YES ;
    [[SIKeyboardShortcutManager sharedManager] registerSimulatorShortcutWithKey:@"n" modifiers:UIKeyModifierCommand action:^{
        NSLog(@"%@",@"Method") ;
        ImageViewController *vc = [[ImageViewController alloc]init] ;
        [[[[[UIApplication sharedApplication] delegate] window] rootViewController]
         presentViewController:vc animated:YES completion:nil];
    }] ;
#endif
}



@end
