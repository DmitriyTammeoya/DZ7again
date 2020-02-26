//
//  TDSportsman.h
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDHuman.h"
#import "TDJumpers.h"
#import "TDRunners.h"
#import "TDSwimmers.h"

NS_ASSUME_NONNULL_BEGIN

@interface TDSportsman : TDHuman <TDJumpers, TDSwimmers, TDRunners>

@property (assign, nonatomic) NSInteger maxSpeed;
@property (assign, nonatomic) NSInteger maxHeight;
@property (assign, nonatomic) NSInteger styles;

@end

NS_ASSUME_NONNULL_END
