//
//  Person.h
//  SHPractice-Runtime
//
//  Created by shine on 2018/8/22.
//  Copyright © 2018 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pet.h"

@interface Person : NSObject
@property (nonatomic, strong) Pet *pet;
- (void)eat;
@end
