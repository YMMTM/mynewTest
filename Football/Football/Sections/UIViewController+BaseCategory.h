//
//  UIViewController+BaseCategory.h
//  Football
//
//  Created by kuaima on 17/3/20.
//  Copyright © 2017年 Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kColor(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define kNavigationBarBGColor kColor(250, 250, 250)
#define KCurrentScreenHeight [UIScreen mainScreen].bounds.size.height
#define KCurrentScreenWidth [UIScreen mainScreen].bounds.size.width


@interface UIViewController (BaseCategory)
-(UIImage *)imageWithColor:(UIColor *)color;
-(void)addTitleView:(NSString *)title;
-(void)addTitleView:(NSString *)title WithWidth:(CGFloat)width;
-(void)setLeftBtnWithTarget:(id) target selector:(SEL)select title:(NSString *) title titleColor:(UIColor *) color normalImageTitle:(NSString *)normalImgName highImageTitle:(NSString *)highImgName;
-(void) setupRightBtnWithTarget:(id) target selector:(SEL)select title:(NSString *) title titleColor:(UIColor *) color normalImageTitle:(NSString *)normalImgName highImageTitle:(NSString *)highImgName;
-(void)setupTwoRightBtnWithTarget:(id) target Firstselector:(SEL)firstSelect FirstTitle:(NSString *)firstTitle firstImg:(NSString *)firstImgName Secondselector:(SEL)secondSelect SecondTitle:(NSString *)SecondTitle secondImg:(NSString *)secondImgName titleColor:(UIColor *)color;
-(void)back;
-(void)setLeftBtnToBack;
-(void)setupNavigation;

@end
