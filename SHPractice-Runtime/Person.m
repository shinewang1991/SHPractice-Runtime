//
//  Person.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person.h"
#import "Pet.h"
#import <objc/runtime.h>
//#import <objc/message.h>

void dynamicMethodIMP(id self, SEL _cmd){
    //implementaion...
    printf("dynamicMethodIMP \n");
}

@implementation Person

- (instancetype)init{
    if(self = [super init]){
        Pet *pet = [[Pet alloc] init];
        self.pet = pet;
    }
    return self;
}

+ (BOOL)resolveClassMethod:(SEL)sel{
    return [super resolveClassMethod:sel];
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    return [super resolveInstanceMethod:sel];
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
//    if([self.pet respondsToSelector:aSelector]){
//        return self.pet;
//    }
    return nil;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if(aSelector == @selector(eat)){
        NSMethodSignature *sig = [Pet instanceMethodSignatureForSelector:@selector(eat)];
        return sig;
    }
    return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    [anInvocation setSelector:@selector(drink)];
    [anInvocation invokeWithTarget:[Pet new]];
}

@end
