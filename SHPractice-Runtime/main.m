//
//  main.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Son.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
//        Person *p = [[Person alloc] init];  //只会执行person的initalze函数
        Son *p = [[Son alloc] init];    //会先执行person的initialze函数，再执行son的initialze函数
    }
    return 0;
}
