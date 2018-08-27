//
//  Person.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
//#import <objc/message.h>

void dynamicMethodIMP(id self, SEL _cmd){
    //implementaion...
    printf("dynamicMethodIMP \n");
}

@implementation Person

+ (BOOL)resolveClassMethod:(SEL)sel{
    
    return [super resolveClassMethod:sel];
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    if(sel == @selector(eat)){
        class_addMethod([self class], sel, (IMP)dynamicMethodIMP, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}
@end
