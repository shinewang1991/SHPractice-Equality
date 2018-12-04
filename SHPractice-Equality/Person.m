//
//  Person.m
//  SHPractice-Equality
//
//  Created by shine on 2018/11/14.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person.h"

@implementation Person
- (BOOL)isEqual:(id)object{
    if(self == object){
        return YES;
    }
    
    if(![object isKindOfClass:[self class]]){
        return NO;
    }
    
    return [self isEqualToPerson:(Person *)object];
    
}

- (BOOL)isEqualToPerson:(Person *)person{
    if(!person){
        return NO;
    }
    BOOL isEqualAge = (!self.age && !person.age) || (self.age == person.age);
    BOOL isEqualName = (!self.name && !person.name) || [self.name isEqualToString:person.name];
    BOOL isEuqalTel = (!self.tel && !person.tel) || (self.tel == person.tel);
    return isEqualAge && isEqualName && isEuqalTel;
}
@end
