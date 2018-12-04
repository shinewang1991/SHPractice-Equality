//
//  Person.h
//  SHPractice-Equality
//
//  Created by shine on 2018/11/14.
//  Copyright © 2018 shine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *tel;


//Override
- (BOOL)isEqual:(id)object;
@end
