//
//  NSJSONSerialization+Convenience.h
//  CinCer
//
//  Created by Kid Young on 7/24/17.
//  Copyright © 2017 Yang XiHong. All rights reserved.
//

#import <Foundation/NSJSONSerialization.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSJSONSerialization (Convenience)

+ (nullable NSData *)dataWithJSONObject:(id)obj;

+ (nullable id)JSONObjectWithData:(NSData *)data;

+ (nullable NSData *)dataWithJSONObject:(id)obj error:(NSError **)error;

+ (nullable id)JSONObjectWithData:(NSData *)data error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
