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
        int n = rand() % 2;
        if (n == 0) {
            self.hasHealthCard = NO;
            NSLog(@"%@ does not have a health card", self.name);
        } else {
            self.hasHealthCard = YES;
            NSLog(@"%@ does have health card", self.name);
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
