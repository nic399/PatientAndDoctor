//
//  Perscription.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Prescription.h"
#import "Doctor.h"

@implementation Prescription

-(instancetype)initWithDate:(NSDate *)issueDate
                 forPatient:(NSString *)patientHealthcard
           withPrescription:(NSString *)prescription
                 fromDoctor:(Doctor *)doctor{
    self = [super init];
    if (self) {
        _issueDate = issueDate;
        _patientHealthcard = patientHealthcard;
        _prescription = prescription;
        _issuingDoctor = doctor;
    }
    return self;
}

@end
