//
//  TDSportsman.m
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDSportsman.h"

@implementation TDSportsman

-(void) run {
    NSLog(@"Sportsman %@ starts running", self.name);
}

-(void) swim {
    NSLog(@"Sportsman %@ is swimming really good", self.name);
}

-(void) jump {
    NSLog(@"Sportsman %@ tries to jump", self.name);
}

@end
