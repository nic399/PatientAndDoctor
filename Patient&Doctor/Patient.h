//
//  Patient.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Patient : Person

@property (nonatomic, assign, readonly) int age;

-(instancetype)initWithName:(NSString *)name andAge:(int)age;

@end
