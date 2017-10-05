//
//  Patient.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@class Doctor;

@interface Patient : Person

@property (nonatomic, assign, readonly) int age;
@property (nonatomic, strong, readonly) NSString *healthcard;

-(instancetype)initWithName:(NSString *)name andAge:(int)age;
-(void)visitDoctor:(Doctor *)doctor;
-(BOOL)requestMedication:(Doctor *)doctor;

@end
