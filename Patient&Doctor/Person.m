//
//  Person.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    
    if (self) {
        _name = name;
    }
    return self;
}

@end
