//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization{
    self = [super initWithName:name];
    if (self) {
        _specialization = specialization;
    }
    return self;
}

@end
