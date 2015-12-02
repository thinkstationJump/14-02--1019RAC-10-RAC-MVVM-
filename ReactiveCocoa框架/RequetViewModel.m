//
//  RequetViewModel.m
//  ReactiveCocoa框架
//
//  Created by apple on 15/10/19.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "RequetViewModel.h"

#import "AFNetworking.h"

@implementation RequetViewModel

- (instancetype)init
{
    if (self = [super init]) {
        [self setUp];
    }
    return self;
}

- (void)setUp
{
    
    _requestCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        // 执行请求
        // 创建请求信号
       RACSignal *requestSignal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
           // 执行命令
           
           // 请求管理者
           [[AFHTTPRequestOperationManager manager] GET:@"https://api.douban.com/v2/book/search" parameters:@{@"q":@"美女"} success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
               
               [subscriber sendNext:responseObject];
               [subscriber sendCompleted];
               
//               NSLog(@"%@",responseObject);
               
               
           } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
               
           }];

            
            return nil;
        }];

        
        return [requestSignal map:^id(id value) {
            // 字典转模型
            return nil;
        }];
        
    }];
    
   
}

@end
