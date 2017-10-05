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

+(void)initialize{
    if (self == [Doctor self]) {
        perscriptions = [[NSMutableSet alloc] init];
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
        Perscription *newPerscription = [[Perscription alloc] initWithDate:[NSDate date] forPatient:patient.healthcard withPerscription:@"New perscription"];
        [perscriptions addObject:newPerscription];
        NSLog(@"Total perscriptions issued: %lu",(unsigned long)[perscriptions count]);
        return true;
    }
    NSLog(@"perscription denied");
    return false;
}

@end
