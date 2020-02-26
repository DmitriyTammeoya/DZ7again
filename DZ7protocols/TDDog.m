//
//  TDDog.m
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDDog.h"

@implementation TDDog

#pragma mark - TDRunners

-(void) run {
    NSLog(@"Dog %@ starts running", self.name);
}
#pragma mark - TDSwimmers

-(void) swim {
    NSLog(@"Dog %@ is fetching a ball", self.name);
}

@end
