//
//  TDJumpers.h
//  DZ7protocols
//
//  Created by  Dmitry Tammeoya on 26.02.2020.
//  Copyright © 2020  Dmitry Tammeoya. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TDJumpers <NSObject>

@required

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger maxHeight;
- (void) jump;

@optional
- (void) playSports;

@end

NS_ASSUME_NONNULL_END
