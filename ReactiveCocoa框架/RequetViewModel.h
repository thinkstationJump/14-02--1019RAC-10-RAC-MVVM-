//
//  RequetViewModel.h
//  ReactiveCocoa框架
//
//  Created by apple on 15/10/19.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ReactiveCocoa.h"

@interface RequetViewModel : NSObject

@property (nonatomic, strong, readonly) RACCommand *requestCommand;

@end
