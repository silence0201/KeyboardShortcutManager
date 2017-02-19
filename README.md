# KeyboardShortcutManager
KeyboardShortcutManager

### 简介
调试时,添加键盘快捷键

### 使用
1. 导入

	* 导入`KeyboardShortcutManager`文件夹
	* Pod安装  

			pod 'KeyboardShortcutManager', '~> 1.0'
2. 导入头文件

		#import "SIKeyboardShortcutManager.h"
		
3. 简单使用

		#if TARGET_OS_SIMULATOR
    	[SIKeyboardShortcutManager sharedManager].enabled = YES ;
    	[[SIKeyboardShortcutManager sharedManager] registerSimulatorShortcutWithKey:@"n" modifiers:UIKeyModifierCommand action:^{
        	NSLog(@"%@",@"Method") ;
        	ImageViewController *vc = [[ImageViewController alloc]init] ;
        	[[[[[UIApplication sharedApplication] delegate] window] rootViewController]
         	presentViewController:vc animated:YES completion:nil];
    	}] ;
		#endif
		
## KeyboardShortcutManager
KeyboardShortcutManager is available under the MIT license. See the LICENSE file for more info.
