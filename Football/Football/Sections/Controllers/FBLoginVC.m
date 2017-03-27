//
//  FBLoginVC.m
//  Football
//
//  Created by kuaima on 17/3/23.
//  Copyright © 2017年 Lin. All rights reserved.
//

#import "FBLoginVC.h"
#import "BaseNaviViewController.h"

@interface FBLoginVC ()

@end

@implementation FBLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.title = @"登录";
    
    [self setLeftBtn];
}

-(void)setLeftBtn
{
    //大小
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,50,30)];
    [backButton setImage:[UIImage imageNamed:@"icon_PM_arrow"] forState:UIControlStateNormal];
    [backButton setImageEdgeInsets:UIEdgeInsetsMake(0,-53,0, 0)];
    [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barBackButtonItem = [[UIBarButtonItem alloc] initWithCustomView: backButton];
    self.navigationItem.leftBarButtonItem = barBackButtonItem;
}
-(void)back
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}



+(void)showLogin
{
    BaseNaviViewController *navVC = [[BaseNaviViewController alloc] initWithRootViewController:[[FBLoginVC alloc] init]];
    [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:navVC animated:YES completion:nil];
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
