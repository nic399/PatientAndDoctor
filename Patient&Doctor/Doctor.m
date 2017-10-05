//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

static NSMutableSet *perscriptions;

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization{
    self = [super initWithName:name];
    if (self) {
        _specialization = specialization;
        _currentPatients = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(BOOL)acceptPatient:(Patient *)patient {
    if (patient.healthcard != nil) {
        [self.currentPatients setObject:patient forKey:[patient healthcard]];
        return true;
    }
    return false;
}

-(BOOL)dispenseMedication:(Patient *)patient{
    if ([self.currentPatients objectForKey:patient.healthcard] != nil) {
        return true;
    }
    return false;
}

@end
