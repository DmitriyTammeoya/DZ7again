//
//  TDRunners.m
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDRunners.h"

@protocol TDRunners <NSObject>

@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat* maxHeight;
- (void) jump;

@optional
- (NSString*) playSports;

@end
