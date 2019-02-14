//
//  NSDateComponents+CCCategory.h
//  CCFrameworks
//
//  Created by Kid Young on 9/2/13.
//  Copyright (c) 2013 Yang XiHong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kSunday,
    kMonday,
    kTuesday,
    kWednesday,
    kThursday,
    kFriday,
    kSaturday
}CCDayOfWeek;

@interface NSDateComponents (CCCategory)

+ (CCDayOfWeek)dayOfWeekOfYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day;
+ (NSUInteger)numberOfdaysOfYear:(NSUInteger)year month:(NSUInteger)month;

@end
