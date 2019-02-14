//
//  NSJSONSerialization+Convenience.m
//  CinCer
//
//  Created by Kid Young on 7/24/17.
//  Copyright © 2017 Yang XiHong. All rights reserved.
//

#import "NSJSONSerialization+Convenience.h"
#import <Foundation/NSDictionary.h>
#import <Foundation/NSData.h>

@implementation NSJSONSerialization (Convenience)

+ (nullable NSData *)dataWithJSONObject:(id)obj
{
    return [NSJSONSerialization dataWithJSONObject:obj error:nil];
}

+ (nullable id)JSONObjectWithData:(NSData *)data
{
    return [NSJSONSerialization JSONObjectWithData:data error:nil];
}

+ (nullable NSData *)dataWithJSONObject:(id)obj error:(NSError **)error
{
    if (obj == nil) {
        obj = [NSDictionary dictionary];
    }
    return [NSJSONSerialization dataWithJSONObject:obj options:kNilOptions error:error];
}

+ (nullable id)JSONObjectWithData:(NSData *)data error:(NSError **)error
{
    if (data == nil) {
        data = [NSData data];
    }
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
}

@end
