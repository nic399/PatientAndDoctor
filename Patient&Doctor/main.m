//
//  main.m
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "general_defines.h"
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Patient *p1 = [[Patient alloc] initWithName:@"Bob" andAge:30];
        Patient *p2 = [[Patient alloc] initWithName:@"Jane" andAge:27];
        Doctor *d1 = [[Doctor alloc] initWithName:@"Doc Jones" andSpecialization:@"GP"];
        Doctor *d2 = [[Doctor alloc] initWithName:@"Doc Haliday" andSpecialization:@"Surgeon"];
        
        BOOL testBool = [p1 requestMedication:d1];
        NSLog(@"Did get drugs: %i", testBool);
        p1.healthcard = @"123";
        p2.healthcard = @"456";
        testBool = [p1 requestMedication:d1];
        NSLog(@"Did get drugs: %i", testBool);
        [p1 visitDoctor:d1];
        testBool = [p1 requestMedication:d1];
        NSLog(@"Did get drugs: %i", testBool);
        [p1 requestMedication:d1];
        [p2 requestMedication:d1];
        [p1 requestMedication:d2];
        [p2 visitDoctor:d2];
        [p2 requestMedication:d2];
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
