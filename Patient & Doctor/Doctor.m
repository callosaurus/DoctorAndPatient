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
        self.prescriptionsKnown = @{ @"flu": @"flu medication",
                                     @"AIDS": @"AIDS medication",
                                     @"dysentery": @"dysentery medication"
                                     };
        self.acceptedPatients = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)wasVisitedBy:(Patient *)patient
{
    [self checkPatientHealthCard:(Patient *)patient];
}


-(void)checkPatientHealthCard:(Patient *)patient
{
    if (patient.hasHealthCard == YES){
        NSLog(@"%@ was accepted because they have health card!", patient.name);
        [self.acceptedPatients addObject:patient.name];
    } else {
        NSLog(@"%@ does not have a health card, and was not accepted :(", patient.name);
    }
}

-(NSString *)fillPrescription:(NSString *)symptom
{
    return [self.prescriptionsKnown objectForKey:symptom];
}

@end
