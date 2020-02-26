//
//  TDKangaroo.h
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import "TDAnimal.h"
#import "TDJumpers.h"

NS_ASSUME_NONNULL_BEGIN

@interface TDKangaroo : TDAnimals <TDJumpers>

@property (assign, nonatomic) NSInteger maxHeight;

@end

NS_ASSUME_NONNULL_END
