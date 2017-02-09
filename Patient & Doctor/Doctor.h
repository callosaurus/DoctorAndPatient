//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *spec;
@property NSMutableSet *acceptedPatients;
@property NSDictionary *prescriptionsKnown; 

-(instancetype)initWithNameAndSpec:(NSString *)doctorName :(NSString *)doctorSpec;
-(void)wasVisitedBy:(Patient *)patient;
-(void)checkPatientHealthCard:(Patient *)patient;
-(NSString *)fillPrescription:(NSString *)symptom;

@end
