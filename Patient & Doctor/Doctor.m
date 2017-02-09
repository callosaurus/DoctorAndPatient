//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithNameAndSpec:(NSString *)doctorName :(NSString *)doctorSpec
{
    self = [super init];
    if (self) {
        self.name = doctorName;
        self.spec = doctorSpec;
    }
    return self;
}

-(void)wasVisitedBy:(Patient *)patient {
    [self checkPatientHealthCard:(Patient *)patient];
}


-(void)checkPatientHealthCard:(Patient *)patient
{
    if (patient.hasHealthCard == YES){
        NSLog(@"Patient was accepted because they have health card!");
        [_acceptedPatients addObject:patient];
    } else {
        NSLog(@"Patient does not have a health card, and was not accepted :(");
    }
}

@end
