//
//  Person+testB.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person+testB.h"
#import <objc/runtime.h>

@implementation Person (testB)
+ (void)load{
    Class class = self;
    SEL originSelector = @selector(eat);
    SEL newSelector = @selector(testEat);
    Method originMethod = class_getInstanceMethod(class, originSelector);
    Method newMethod = class_getInstanceMethod(class, newSelector);
    
    BOOL didAddMethod = class_addMethod(class, originSelector, method_getImplementation(newMethod), method_getTypeEncoding(newMethod));
    //给当前class添加eat为名字testEat为实现的方法。
    //YES: 以前不存在eat的实现,新添加的方法成功
    //NO: 以前就存在eat的实现，所以新添加方法失败
    if(didAddMethod){  //添加eat为名字testEat实现成功，然后需要交换testEat为名字的方法的实现为eat。 双双互换。
        class_replaceMethod(class, newSelector, method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
    }
    else{  //没添加成功，说明eat为名字的eat实现存在。 只需要交换eat和testEat两个的实现即可.
        method_exchangeImplementations(originMethod, newMethod);
    }
}

+ (void)initialize{
    NSLog(@"%s",__func__);      //initialized函数没有执行
}

- (void)testEat{
    [self testEat];     //testEat函数这里已经变成eat方法了。 不要理解成递归了
    NSLog(@"%s",__func__);
}
@end
