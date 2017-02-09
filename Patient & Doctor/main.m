//
//  main.m
//  Patient & Doctor
//
//  Created by Callum Davies on 2017-02-09.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *Bob = [[Patient alloc] initWithName:@"Bob" andAge :56];
        Doctor *Erlenmeyer = [[Doctor alloc] initWithNameAndSpec:@"Erlenmeyer" :@"Otolaryngology"];
        
        
//        Patient *Tom = [[Patient alloc] initWithName:@"Tom" andAge :56];
//        Patient *Dick = [[Patient alloc] initWithName:@"Dick" andAge :56];
//        Patient *Harry = [[Patient alloc] initWithName:@"Harry" andAge :56];
//        Patient *Cory = [[Patient alloc] initWithName:@"Cory" andAge :30];
        
    
        
        [Bob visitDoctor:Erlenmeyer];
//        [Erlenmeyer checkPatientHealthCard:Bob];
        
        
//        NSLog(@"%@", patientList);
        
    }
    return 0;
}
