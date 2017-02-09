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
        Doctor *Goldsmith = [[Doctor alloc] initWithNameAndSpec:@"Goldsmith" :@"Flagrant Homeopathy"];
        
        
        [Bob visitDoctor:Erlenmeyer];
        [Bob requestMedication:Erlenmeyer];
        
        [Bob visitDoctor:Goldsmith];
        [Bob requestMedication:Goldsmith];

        
    }
    return 0;
}
