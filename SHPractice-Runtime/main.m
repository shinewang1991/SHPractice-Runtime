//
//  main.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Pet.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Pet *pet = [[Pet alloc] init];
        NSString *food = @"apple";
        //Three ways to call a message:
        //1:
        [pet eat:food];
        
        //2:
        [pet performSelector:@selector(eat:) withObject:food];
        
        //3:
        NSMethodSignature *signature = [Pet instanceMethodSignatureForSelector:@selector(eat:)];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:pet];
        [invocation setSelector:@selector(eat:)];
        [invocation setArgument:&food atIndex:2];   //index 0:target, 1:selector, 2:argument
        [invocation invoke];
    }
    return 0;
}
