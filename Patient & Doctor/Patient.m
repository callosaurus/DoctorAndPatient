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
        self.prescriptionHistory = [[NSMutableArray alloc] init];
        
        int n = arc4random_uniform(2);
        if (n == 0) {
            _hasHealthCard = NO;
            NSLog(@"%@ doesn't a health card", self.name);
        } else {
            _hasHealthCard = YES;
            NSLog(@"%@ has a health card", self.name);
        }
        
        int symptomNumber = arc4random_uniform(4);
        switch (symptomNumber) {
            case 1:
                NSLog(@"%@ has the flu", self.name);
                self.symptoms = @"flu";
                break;
            case 2:
                NSLog(@"%@ has AIDS", self.name);
                self.symptoms = @"AIDS";
                break;
            case 3:
                NSLog(@"%@ has dysentery (and will probably die soon)", self.name);
                self.symptoms = @"dysentery";
                break;
                
            default:
                break;
        }
        
    }
    return self;
}


-(void)visitDoctor:(Doctor *)doctorName
{
    NSLog(@"%@ visited %@!", self.name, doctorName.name);
    [doctorName wasVisitedBy:self];
}

-(void)requestMedication:(Doctor *)doctorName {
    NSLog(@"%@ requested medication!", self.name);
    NSString *prescriptionReceived = [doctorName fillPrescription:_symptoms];
    
    //patient already has medication
    if ([_prescriptionHistory containsObject:prescriptionReceived]) {
        NSLog(@"%@ already has medication for that!",self.name);
        
    //patient gets new medication
    } else if ([doctorName.acceptedPatients containsObject:self.name]) {
        NSLog(@"%@ received %@!",self.name, prescriptionReceived);
        [self.prescriptionHistory addObject:prescriptionReceived];
        
    //patient doesn't have card
    } else {
        NSLog(@"%@ wasn't accepted, so can't request medication",self.name);
    }
}

@end
