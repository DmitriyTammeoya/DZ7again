//
//  TDStudent.m
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDStudent.h"

@implementation TDStudent

#pragma mark - TDRunners

-(void) run {
    NSLog(@"Student %@ starts running", self.name);
}

#pragma mark - TDSwimmers

-(void) swim {
    NSLog(@"Student %@ is drowning", self.name);
}

@end
