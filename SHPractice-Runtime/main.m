//
//  main.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"Hello, World!");
        Person *p = [[Person alloc] init];
        [p eat];
    }
    return 0;
}
