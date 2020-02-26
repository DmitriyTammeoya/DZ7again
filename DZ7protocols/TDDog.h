//
//  TDDog.h
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDAnimals.h"
#import "TDSwimmers.h"
#import "TDRunners.h"

NS_ASSUME_NONNULL_BEGIN

@interface TDDog : TDAnimals <TDRunners, TDSwimmers>

@property (assign, nonatomic) NSInteger maxSpeed;
@property (assign, nonatomic) NSInteger styles;

@end

NS_ASSUME_NONNULL_END
