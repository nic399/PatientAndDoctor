//
//  Perscription.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Perscription : NSObject

@property (nonatomic, strong, readonly) NSString *patientHealthcard;
@property (nonatomic, strong, readonly) NSString *perscription;
@property (nonatomic, strong, readonly) NSDate *issueDate;

-(instancetype)initWithDate:(NSDate *)issueDate
                 forPatient:(NSString *)patientHealthcard
           withPerscription:(NSString *)perscription;

@end
