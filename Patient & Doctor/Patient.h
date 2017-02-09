//
//  Patient.h
//  Patient & Doctor
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property NSString *name;
@property int age;
@property BOOL hasHealthCard;
@property NSString *symptoms;

-(instancetype)initWithName:(NSString *)patientName andAge:(int)patientAge;
-(void)visitDoctor:(Doctor *)doctorName;
-(void)requestMedication:(Doctor *)doctorName;

@end
