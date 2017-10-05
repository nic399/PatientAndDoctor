//
//  Perscription.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Perscription.h"

@implementation Perscription

-(instancetype)initWithDate:(NSDate *)issueDate
                 forPatient:(NSString *)patientHealthcard
           withPerscription:(NSString *)perscription{
    self = [super init];
    if (self) {
        _issueDate = issueDate;
        _patientHealthcard = patientHealthcard;
        _perscription = perscription;
    }
    return self;
}

@end
