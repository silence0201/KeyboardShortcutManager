//
//  SIKeyboardShortcutManager.h
//  KeyboardShortcutManagerDemo
//
//  Created by 杨晴贺 on 19/02/2017.
//  Copyright © 2017 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^KeyBoardAction)();

#if TARGET_OS_SIMULATOR

@interface SIKeyboardShortcutManager : NSObject

@property (nonatomic,assign,getter=isEnabled) BOOL enabled ;

+ (instancetype)sharedManager ;

- (void)registerSimulatorShortcutWithKey:(NSString *)key
                               modifiers:(UIKeyModifierFlags)modifiers
                                  action:(KeyBoardAction)action;

@end
#endif
