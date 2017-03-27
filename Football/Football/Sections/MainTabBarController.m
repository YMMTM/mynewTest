//
//  MainTabBarController.m
//  Football
//
//  Created by kuaima on 17/3/20.
//  Copyright © 2017年 Lin. All rights reserved.
//

#import "MainTabBarController.h"
#import "FBHomePageVC.h"
#import "FBNewsPageVC.h"
#import "FBExpertPageVC.h"
#import "FBLivePageVC.h"
#import "FBMyCenterVC.h"
#import "FBLoginVC.h"

#import "BaseNaviViewController.h"

@interface MainTabBarController ()<UITabBarControllerDelegate>

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSArray*titleArray=@[@"即时比分",@"新闻",@"专家",@"直播",@"我"];
    NSArray*imageArray=@[@"icon_tab_homepage"];
    NSArray*selectImageArray=@[@"icon_tab_homepage_select"];
    
    NSArray*classNameArray=@[@"FBHomePageVC",
                             @"FBNewsPageVC",
                             @"FBExpertPageVC",
                             @"FBLivePageVC",
                             @"FBMyCenterVC"
                             ];
    
    NSMutableArray *controllers = [[NSMutableArray alloc] init];

    for (int i = 0; i < titleArray.count; i++) {
        Class class = NSClassFromString(classNameArray[i]);
        UIViewController *vc = (UIViewController *)[[class alloc] init];
        
        vc.tabBarItem.title = titleArray[i];
        vc.tabBarItem.image = [[UIImage imageNamed:@"icon_tab_homepage"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:@"icon_tab_homepage_select"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        BaseNaviViewController *nav = [[BaseNaviViewController alloc] initWithRootViewController:vc];
    
        [controllers addObject:nav];
    }
    

    self.viewControllers = controllers ;
    self.selectedIndex = 0; //通过加到标签栏视图控制上的索引来确定
    [[UITabBar appearance] setTintColor:[UIColor blackColor]];
//    [[UITabBar appearance] setShadowImage:[UIImage new]];
//    [[UITabBar appearance] setBackgroundImage:[UIImage new]];
    self.delegate = self;
    
    
}
-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
//    if ([self.viewControllers indexOfObject:viewController] >= 2 && [[NSUserDefaults standardUserDefaults] objectForKey:PostCookisName] == nil) {
//        [LoginViewController showLogin];
//        return FALSE;
//    }
    
    if ([self.viewControllers indexOfObject:viewController] >= 3) {
        [FBLoginVC showLogin];
        return FALSE;
    }
    
    return TRUE;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
