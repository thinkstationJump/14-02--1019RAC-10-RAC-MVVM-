//
//  ViewController.m
//  ReactiveCocoa框架
//
//  Created by apple on 15/10/18.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "ViewController.h"



#import "ReactiveCocoa.h"
#import "RequetViewModel.h"

@interface ViewController ()

/**  */
@property (nonatomic, strong) RequetViewModel *requestViewModel;

@end

@implementation ViewController

- (RequetViewModel *)requestViewModel
{
    if (_requestViewModel == nil) {
        _requestViewModel = [[RequetViewModel alloc] init];
    }
    
    return _requestViewModel;
}

// https://api.douban.com/v2/book/search?q=%22%E7%BE%8E%E5%A5%B3%22
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 请求数据
   RACSignal *signal = [self.requestViewModel.requestCommand execute:nil];
    
    [signal subscribeNext:^(id x) {
        NSLog(@"%@",x);
        // 字典转模型
        
        // 刷新表格
        
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
