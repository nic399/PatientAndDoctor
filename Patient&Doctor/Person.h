//
//  Person.h
//  Patient&Doctor
//
//  Created by Nicholas Fung on 2017-10-05.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly, nonatomic, strong) NSString *name;

-(instancetype)initWithName:(NSString*)name;

@end
