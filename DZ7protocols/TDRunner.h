//
//  TDRunner.h
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDHuman.h"
#import "TDRunners.h"

NS_ASSUME_NONNULL_BEGIN

@interface TDRunner : TDHuman <TDRunners>

@property (assign, nonatomic) NSInteger maxSpeed;

@end

NS_ASSUME_NONNULL_END
