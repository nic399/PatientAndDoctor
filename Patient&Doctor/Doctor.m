//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

static NSMutableSet *prescriptions;

@implementation Doctor

+(void)initialize{
    if (self == [Doctor self]) {
        prescriptions = [[NSMutableSet alloc] init];
        NSLog(@"'perscriptions' has been initialized");
    }
}

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
        NSLog(@"Accepted new patient; this doctor now has %lu patient(s)", (unsigned long)[self.currentPatients count]);
        return true;
    }
    return false;
}

-(BOOL)dispenseMedication:(Patient *)patient{
    if ([self.currentPatients objectForKey:patient.healthcard] != nil) {
        
        NSLog(@"perscription dispensed");
        Prescription *newPrescription = [[Prescription alloc] initWithDate:[NSDate date] forPatient:patient.healthcard withPrescription:@"New prescription" fromDoctor:self];
        [prescriptions addObject:newPrescription];
        NSLog(@"Total prescriptions issued: %lu",(unsigned long)[prescriptions count]);
        return true;
    }
    NSLog(@"prescription denied");
    return false;
}

@end
