//
//  Animal.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/27.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Pet.h"

@implementation Pet
- (void)eat:(NSString *)food{
    NSLog(@"%s---%@",__func__,food);
}

- (void)drink{
    NSLog(@"%s",__func__);
}
@end
