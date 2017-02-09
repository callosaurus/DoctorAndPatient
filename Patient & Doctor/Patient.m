//
//  Patient.m
//  Patient & Doctor
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)patientName andAge:(int)patientAge
{
    self = [super init];
    if (self) {
        self.name = patientName;
        self.age = patientAge;
        int n = arc4random_uniform(2);
        if (n == 0) {
            self.hasHealthCard = NO;
            NSLog(@"%@ was generated without health card", self.name);
        } else {
            self.hasHealthCard = YES;
            NSLog(@"%@ was generated with health card", self.name);
        }
    }
    return self;
}


-(void)visitDoctor:(Doctor *)doctorName
{
    NSLog(@"%@ visited %@!", self.name, doctorName.name);
    [doctorName wasVisitedBy:self];
}

@end
