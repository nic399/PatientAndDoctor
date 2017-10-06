//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Symptom.h"

@class Patient;
@class Prescription;

@interface Doctor : Person

@property (nonatomic, strong, readonly) NSString *specialization;
@property (nonatomic, strong, readwrite) NSMutableDictionary *currentPatients;

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

-(BOOL)acceptPatient:(Patient *)patient;
-(BOOL)dispenseMedication:(Patient *)patient forSymptom:(NSArray<Symptom *> *)symptoms;

@end
