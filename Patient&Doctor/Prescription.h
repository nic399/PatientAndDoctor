//
//  Perscription.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Prescription : NSObject

@property (nonatomic, strong, readonly) NSString *patientHealthcard;
@property (nonatomic, strong, readonly) NSString *prescription;
@property (nonatomic, strong, readonly) NSDate *issueDate;
@property (nonatomic, copy, readonly) Doctor *issuingDoctor;

-(instancetype)initWithDate:(NSDate *)issueDate
                 forPatient:(NSString *)patientHealthcard
           withPrescription:(NSString *)prescription
                 fromDoctor:(Doctor *)doctor;

@end
