//
//  FBHomePageVC.m
//  Football
//
//  Created by kuaima on 17/3/20.
//  Copyright © 2017年 Lin. All rights reserved.
//

#import "FBHomePageVC.h"
#import "ZLCWebView.h"

#define isiOS8 __IPHONE_OS_VERSION_MAX_ALLOWED>=__IPHONE_8_0

@interface FBHomePageVC ()<UIWebViewDelegate,ZLCWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;



@end

@implementation FBHomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"即时比分";
    // Do any additional setup after loading the view.
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    self.webView = [[UIWebView alloc] initWithFrame:self.view.frame];
//    self.webView.delegate = self;
//    [self.view addSubview:self.webView];
//    
//    self.webView.backgroundColor = [UIColor whiteColor];
//    self.webView.scrollView.decelerationRate = UIScrollViewDecelerationRateNormal;
//    
//    NSURL *htmlURL = [NSURL URLWithString:@"http://www.sina.com"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:htmlURL];
//    [self.webView loadRequest:request];
    
    ZLCWebView *my = [[ZLCWebView alloc]initWithFrame:self.view.bounds];
    [my loadURLString:@"http://www.sina.com"];
    my.delegate = self;
    [self.view addSubview:my];
    

    
}

- (void)zlcwebViewDidStartLoad:(ZLCWebView *)webview
{
    NSLog(@"页面开始加载");
}

- (void)zlcwebView:(ZLCWebView *)webview shouldStartLoadWithURL:(NSURL *)URL
{
    NSLog(@"截取到URL：%@",URL);
}
- (void)zlcwebView:(ZLCWebView *)webview didFinishLoadingURL:(NSURL *)URL
{
    NSLog(@"页面加载完成");
    
}

- (void)zlcwebView:(ZLCWebView *)webview didFailToLoadURL:(NSURL *)URL error:(NSError *)error
{
    NSLog(@"加载出现错误");
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
