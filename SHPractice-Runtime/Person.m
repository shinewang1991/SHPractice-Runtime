//
//  Person.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (void)load{
    NSLog(@"%s",__func__); 
}

+ (void)initialize{
    NSLog(@"%s",__func__);
}
@end
