//
//  UIViewController+BaseCategory.m
//  Football
//
//  Created by kuaima on 17/3/20.
//  Copyright © 2017年 Lin. All rights reserved.
//

#import "UIViewController+BaseCategory.h"

@implementation UIViewController (BaseCategory)

- (void)setupNavigation
{
    //适配ios7
    if( ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0))
    {
        self.navigationController.navigationBar.translucent = NO;
    }
    //添加导航栏背影图片
    UIImage *navigationBarBGImage = [self imageWithColor:kNavigationBarBGColor];
    [self.navigationController.navigationBar setBackgroundImage:navigationBarBGImage forBarMetrics:UIBarMetricsDefault];
}

#pragma mark 添加两个右键
-(void)setupTwoRightBtnWithTarget:(id) target Firstselector:(SEL)firstSelect FirstTitle:(NSString *)firstTitle firstImg:(NSString *)firstImgName Secondselector:(SEL)secondSelect SecondTitle:(NSString *)SecondTitle secondImg:(NSString *)secondImgName titleColor:(UIColor *)color
{
    //大小
    UIButton *firstButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,55,30)];
    //名称
    [firstButton setTitle:firstTitle forState:UIControlStateNormal];
    //字体大小
    firstButton.titleLabel.font = [UIFont systemFontOfSize:13];
    //颜色
    [firstButton setTitleColor:color forState:UIControlStateNormal];
    [firstButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -20)];
    [firstButton setImage:[UIImage imageNamed:firstImgName] forState:UIControlStateNormal];
    
    UIBarButtonItem *firstButtonItem = [[UIBarButtonItem alloc] initWithCustomView: firstButton];
    [firstButton addTarget:target action:firstSelect forControlEvents:UIControlEventTouchUpInside];
    
    //大小
    UIButton *secondButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,55,30)];
    //名称
    [secondButton setTitle:SecondTitle forState:UIControlStateNormal];
    //字体大小
    secondButton.titleLabel.font = [UIFont systemFontOfSize:13];
    //颜色
    [secondButton setTitleColor:color forState:UIControlStateNormal];
    [secondButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0,-20)];
    [secondButton setImage:[UIImage imageNamed:secondImgName] forState:UIControlStateNormal];
    
    UIBarButtonItem *secondButtonItem = [[UIBarButtonItem alloc] initWithCustomView: secondButton];
    [secondButton addTarget:target action:secondSelect forControlEvents:UIControlEventTouchUpInside];
    
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:secondButtonItem,firstButtonItem,nil]];
}
#pragma mark 统一左边返回按钮
-(void)setLeftBtnWithTarget:(id) target selector:(SEL)select title:(NSString *) title titleColor:(UIColor *) color normalImageTitle:(NSString *)normalImgName highImageTitle:(NSString *)highImgName{
    //大小
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,40,30)];
    //名称
    [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:normalImgName] forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:highImgName] forState:UIControlStateSelected];
    //字体大小
    backButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //颜色
    [backButton setTitleColor:color forState:UIControlStateNormal];
    [backButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 10, 0, -10)];
    UIBarButtonItem *barBackButtonItem = [[UIBarButtonItem alloc] initWithCustomView: backButton];
    [backButton addTarget:target action:select forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = barBackButtonItem;
}


#pragma mark 添加右键
-(void)setupRightBtnWithTarget:(id) target selector:(SEL)select title:(NSString *)title titleColor:(UIColor *) color normalImageTitle:(NSString *)normalImgName highImageTitle:(NSString *)highImgName
{
    //大小
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,80,30)];
    
    
    //名称
    [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:normalImgName] forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:highImgName] forState:UIControlStateSelected];
    
    [backButton setImageEdgeInsets:UIEdgeInsetsMake(0, -10, 0, -10)];
    
    
    //字体大小
    backButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //颜色
    [backButton setTitleColor:color forState:UIControlStateNormal];
    [backButton setTitleEdgeInsets:UIEdgeInsetsMake(0, -10, 0, -10)];
    UIBarButtonItem *barBackButtonItem = [[UIBarButtonItem alloc] initWithCustomView: backButton];
    [backButton addTarget:target action:select forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = barBackButtonItem;
}

#pragma mark 添加titleView
-(void)addTitleView:(NSString *)title WithWidth:(CGFloat)width{
//    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithHexString:@"#444444" ], NSForegroundColorAttributeName, [UIFont systemFontOfSize:16.0f], NSFontAttributeName, nil];
//    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithHexString:@"#fafafa" alpha:1]];
//    [self.navigationController.navigationBar setTitleTextAttributes:dict];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    [self.navigationItem setTitle:title];
    //    UILabel *titleView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 44)];
    //    titleView.text = title;
    //    titleView.textAlignment = NSTextAlignmentCenter;
    //    titleView.textColor = [UIColor colorWithHexString:@"#444444"];
    //    titleView.font = [UIFont systemFontOfSize:18.0f];
    //
    //    self.navigationItem.titleView = titleView;
    //    //去除navigationItem 的分割黑线
    //    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]){
    //        NSArray *list=self.navigationController.navigationBar.subviews;
    //        for (int i = 0; i < list.count; i++) {
    //            UIView *fatherView = list[i];
    //            NSArray *tempArr = fatherView.subviews;
    //            for (id ob in tempArr) {
    //                if ([ob isKindOfClass:[UIImageView class]]) {
    //                    UIImageView *imgV = (UIImageView *)ob;
    //                    if (imgV.frame.size.height <= 0.5) {
    //                        imgV.hidden = YES;
    //                    }
    //                }
    //            }
    //        }
    //    }
}
#pragma mark 添加titleView
-(void)addTitleView:(NSString *)title{
    [self addTitleView:title WithWidth:KCurrentScreenWidth];
}



-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark 绘制导航栏背景色用到的image
-(UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

-(void)setLeftBtnToBack{
    if([self.navigationController.viewControllers objectAtIndex:0] != self)
    {
        //大小
        UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,50,30)];
        [backButton setImage:[UIImage imageNamed:@"icon_PM_arrow"] forState:UIControlStateNormal];
        [backButton setImageEdgeInsets:UIEdgeInsetsMake(0,-53,0, 0)];
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *barBackButtonItem = [[UIBarButtonItem alloc] initWithCustomView: backButton];
        self.navigationItem.leftBarButtonItem = barBackButtonItem;
    }
}


@end

