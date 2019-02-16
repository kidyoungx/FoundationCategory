//
//  NSString+CCCategory.m
//  CCFrameworks
//
//  Created by Kid Young on 8/30/12.
//  Copyright (c) 2012 Yang XiHong. All rights reserved.
//

#import "NSString+CCCategory.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (CCCategory)

@end

@implementation NSString (CCStringTrimming)

- (NSString *)stringByTrimmingStringFrom:(NSString *)from to:(NSString *)to {
    NSString *result = [NSString stringWithString:self];
    NSScanner *scanner = [NSScanner scannerWithString:result];
    NSString *target = nil;
    NSString *replacement = nil;
    while (![scanner isAtEnd]) {
        // find start of substring
        [scanner scanUpToString:from intoString:nil];
        // find end of substring
        [scanner scanUpToString:to intoString:&replacement];
        target = [NSString stringWithFormat:@"%@%@", replacement, to];
        result = [result stringByReplacingOccurrencesOfString:target
                                                   withString:@""];
    }
    return result;
}

@end

@implementation NSString (CCByteTranslate)

+ (NSString *)bytesToAvailableUnit:(long long)bytes {
    if (bytes < 1024) {
        return [NSString stringWithFormat:@"%lldB", bytes];
    } else if (bytes >= 1024 && bytes < 1024 * 1024) {
        return [NSString stringWithFormat:@"%.1fKB", (double)bytes / 1024];
    } else if (bytes >= 1024 * 1024 && bytes < 1024 * 1024 * 1024) {
        return [NSString stringWithFormat:@"%.2fMB", (double)bytes / (1024 * 1024)];
    } else if (bytes >= 1024 * 1024 * 1024 && bytes < 1024ll * 1024ll * 1024ll * 1024ll) {
        return [NSString stringWithFormat:@"%.3fGB", (double)bytes / (1024 * 1024 * 1024)];
    } else {
        return @"Overflow";
    }
}

@end

@implementation NSString (CCDateTranslate)

+ (NSString *)shortMonthFromNumber:(NSUInteger)month {
    NSString *monthName = nil;
    switch (month) {
        case 1:
            monthName = @"Jan";
            break;
        case 2:
            monthName = @"Feb";
            break;
        case 3:
            monthName = @"Mar";
            break;
        case 4:
            monthName = @"Apr";
            break;
        case 5:
            monthName = @"May";
            break;
        case 6:
            monthName = @"Jun";
            break;
        case 7:
            monthName = @"Jul";
            break;
        case 8:
            monthName = @"Aug";
            break;
        case 9:
            monthName = @"Sep";
            break;
        case 10:
            monthName = @"Oct";
            break;
        case 11:
            monthName = @"Nov";
            break;
        case 12:
            monthName = @"Dec";
            break;
    }
    return monthName;
}

+ (NSString *)longMonthFromNumber:(NSUInteger)month {
    NSString *monthName = nil;
    switch (month) {
        case 1:
            monthName = @"January";
            break;
        case 2:
            monthName = @"February";
            break;
        case 3:
            monthName = @"March";
            break;
        case 4:
            monthName = @"April";
            break;
        case 5:
            monthName = @"May";
            break;
        case 6:
            monthName = @"June";
            break;
        case 7:
            monthName = @"July";
            break;
        case 8:
            monthName = @"August";
            break;
        case 9:
            monthName = @"September";
            break;
        case 10:
            monthName = @"October";
            break;
        case 11:
            monthName = @"November";
            break;
        case 12:
            monthName = @"December";
            break;
    }
    return monthName;
}

+ (NSUInteger)numberFromShortMonth:(NSString *)month {
    if ([month isEqualToString:@"Jan"]) {
        return 1;
    } else if ([month isEqualToString:@"Feb"]) {
        return 2;
    } else if ([month isEqualToString:@"Mar"]) {
        return 3;
    } else if ([month isEqualToString:@"Apr"]) {
        return 4;
    } else if ([month isEqualToString:@"May"]) {
        return 5;
    } else if ([month isEqualToString:@"Jun"]) {
        return 6;
    } else if ([month isEqualToString:@"Jul"]) {
        return 7;
    } else if ([month isEqualToString:@"Aug"]) {
        return 8;
    } else if ([month isEqualToString:@"Sep"]) {
        return 9;
    } else if ([month isEqualToString:@"Oct"]) {
        return 10;
    } else if ([month isEqualToString:@"Nov"]) {
        return 11;
    } else if ([month isEqualToString:@"Dec"]) {
        return 12;
    } else {
        return 0;
    }
}

+ (NSUInteger)numberFromLongMonth:(NSString *)month {
    if ([month isEqualToString:@"January"]) {
        return 1;
    } else if ([month isEqualToString:@"February"]) {
        return 2;
    } else if ([month isEqualToString:@"March"]) {
        return 3;
    } else if ([month isEqualToString:@"April"]) {
        return 4;
    } else if ([month isEqualToString:@"May"]) {
        return 5;
    } else if ([month isEqualToString:@"June"]) {
        return 6;
    } else if ([month isEqualToString:@"July"]) {
        return 7;
    } else if ([month isEqualToString:@"August"]) {
        return 8;
    } else if ([month isEqualToString:@"September"]) {
        return 9;
    } else if ([month isEqualToString:@"October"]) {
        return 10;
    } else if ([month isEqualToString:@"November"]) {
        return 11;
    } else if ([month isEqualToString:@"December"]) {
        return 12;
    } else {
        return 0;
    }
}

@end

@implementation NSString (CCTextEncoding)

- (BOOL)isASCIIString
{
    BOOL isASCIIString = YES;
    for (NSUInteger index = 0; index < self.length; ++index) {
        unichar uc = [self characterAtIndex:index];
        isASCIIString = isascii(uc);
        if (isASCIIString == NO) {
            break;
        }
    }
    return isASCIIString;
}

@end

@implementation NSString (CCCommonCryptoCommonDigest)

- (NSString *)stringByMD5Sum
{
    const char *value = self.UTF8String;
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, (CC_LONG)strlen(value), outputBuffer);
    NSMutableString *outputString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; ++count) {
        [outputString appendFormat:@"%02x", outputBuffer[count]];
    }
    return outputString;
}

@end

@implementation NSString (RegularExpression)

- (BOOL)regularExpressionMatchURL:(NSString *)url
{
    NSString *stephenhay = @"^((https?|ftp)://)?[^\\s/$.?#].[^\\s]*$";
//    NSString *immeEmosol = @"^((https?|ftp)://)?(-\\.)?([^\\s/?\\.#-]+\\.?)+(/[^\\s]*)?$";
    NSString *regularExpression = [NSString stringWithFormat:@"%@", stephenhay];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regularExpression];
    BOOL result = [predicate evaluateWithObject:url];
    /*
    NSString *pattern = immeEmosol;
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:&error];
    NSArray<NSTextCheckingResult *> *results = [regex matchesInString:url options:0 range:NSMakeRange(0, url.length)];
    if (results.count != result) {

    }
     */
    return result;
}

@end
