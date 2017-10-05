//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Doctor : Person

@property (nonatomic, strong, readonly) NSString *specialization;

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

@end
