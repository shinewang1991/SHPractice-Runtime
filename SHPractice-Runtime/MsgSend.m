//
//  MsgSend.m
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/23.
//  Copyright © 2018 shine. All rights reserved.
//

#import "MsgSend.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation MsgSend
- (void)runDemo{
    NSString *testString = @"HelloWorld";
    SEL sel = @selector(substringFromIndex:);
    NSString *subString = objc_msgSend(testString,sel,4);   //Build Setting--> Preprocessing--> Enable Strict Checking of objc_msgSend Calls. need to set NO
    
    //Equal to
   subString = [testString substringFromIndex:4];
    
    sel = @selector(rangeOfString:);
    NSRange (*rangeSelector)(id receiver, SEL operation,id);
    rangeSelector = (NSRange(*)(id,SEL,id))objc_msgSend_stret;
    NSRange range = rangeSelector(testString, sel, @"llo");
    //Equal to
    range = [testString rangeOfString:@"llo"];
}
@end
