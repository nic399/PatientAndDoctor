//
//  Patient.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name andAge:(int)age{
    self = [super initWithName:name];
    if (self) {
        _age = age;
        _healthcard = nil;
    }
    return self;
}

-(void)visitDoctor:(Doctor *)doctor{
    if ([doctor acceptPatient:self]) {
        
    }
}

-(BOOL)requestMedication:(Doctor *)doctor forSymptom:(NSArray<Symptom *> *)symptoms{
    
    return [doctor dispenseMedication:self forSymptom:symptoms];
}

-(void)receivePrescription:(Prescription *)prescription{
    [self.receivedPerscriptions addObject:prescription];
}

@end
