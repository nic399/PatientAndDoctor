//
//  Patient.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name andAge:(int)age{
    self = [super initWithName:name];
    if (self) {
        _age = age;
    }
    return self;
}

@end
