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
        NSLog(@"Hello, World!");
        Person *p = [[Person alloc] init];
        
        /*输出
        2018-08-22 13:32:10.563180+0800 SHPractice-Runtime[39548:829021] +[Person(testB) load]
        2018-08-22 13:32:10.563394+0800 SHPractice-Runtime[39548:829021] +[Person(testA) load]
        2018-08-22 13:32:10.563440+0800 SHPractice-Runtime[39548:829021] Hello, World!
        2018-08-22 13:32:10.563479+0800 SHPractice-Runtime[39548:829021] +[Person(testA) initialize]
         */
    }
    return 0;
}
