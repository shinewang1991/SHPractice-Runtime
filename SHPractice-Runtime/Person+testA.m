//
//  Person+testA.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person+testA.h"

@implementation Person (testA)
+ (void)load{
    NSLog(@"%s",__func__);      //load执行了
}

+ (void)initialize{
    NSLog(@"%s",__func__);    //initialized函数执行了
}
@end
