//
//  TDHuman.h
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 23.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TDHuman : NSObject

typedef enum {
    TDGenderMale,
    TDGenderFemale
} TDGender;

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) TDGender gender;

@end

NS_ASSUME_NONNULL_END
