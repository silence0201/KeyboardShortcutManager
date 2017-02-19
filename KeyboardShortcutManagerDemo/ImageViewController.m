//
//  ImageViewController.m
//  KeyboardShortcutManagerDemo
//
//  Created by 杨晴贺 on 19/02/2017.
//  Copyright © 2017 Silence. All rights reserved.
//

#import "ImageViewController.h"
#import "SIKeyboardShortcutManager.h"
#import <libextobjc/EXTScope.h>

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.bounds] ;
    imageView.contentMode = UIViewContentModeScaleAspectFill ;
    UIImage *image = [UIImage imageNamed:@"1"] ;
    imageView.image = image ;
    [self.view addSubview:imageView] ;
    
#if TARGET_OS_SIMULATOR
    [SIKeyboardShortcutManager sharedManager].enabled = YES ;
    @weakify(self)
    [[SIKeyboardShortcutManager sharedManager] registerSimulatorShortcutWithKey:@"d" modifiers:UIKeyModifierCommand action:^{
        @strongify(self)
        NSLog(@"%@",@"Method") ;
        [self dismissViewControllerAnimated:YES completion:nil] ;
    }] ;
#endif
}






@end
