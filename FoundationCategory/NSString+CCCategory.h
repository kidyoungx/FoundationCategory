//
//  NSString+CCCategory.h
//  CCFrameworks
//
//  Created by Kid Young on 8/30/12.
//  Copyright (c) 2012 Yang XiHong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CCCategory)

@end

@interface NSString (CCStringTrimming)

- (NSString *)stringByTrimmingStringFrom:(NSString *)from to:(NSString *)to;

@end

@interface NSString (CCByteTranslate)

+ (NSString *)bytesToAvailableUnit:(long long)bytes;

@end

@interface NSString (CCDateTranslate)

+ (NSString *)shortMonthFromNumber:(NSUInteger)month;
+ (NSString *)longMonthFromNumber:(NSUInteger)month;
+ (NSUInteger)numberFromShortMonth:(NSString *)month;
+ (NSUInteger)numberFromLongMonth:(NSString *)month;

@end

@interface NSString (CCTextEncoding)

- (BOOL)isASCIIString;

@end

@interface NSString (CCCommonCryptoCommonDigest)

- (NSString *)stringByMD5Sum;

@end

@interface NSString (RegularExpression)

- (BOOL)regularExpressionMatchURL:(NSString *)url;

@end
