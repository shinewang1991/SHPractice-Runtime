//
//  main.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Son.h"
#import "MsgSend.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"Hello, World!");
//        Person *p = [[Person alloc] init];
//        [p eat];    //这里的eat方法已经被替换成testEat方法了。这就是method swizzing.
        MsgSend *msgSend = [MsgSend new];
        [msgSend runDemo];
    }
    return 0;
}
