//
//  NSDateComponents+CCCategory.m
//  CCFrameworks
//
//  Created by Kid Young on 9/2/13.
//  Copyright (c) 2013 Yang XiHong. All rights reserved.
//

#import "NSDateComponents+CCCategory.h"

@implementation NSDateComponents (CCCategory)

+ (CCDayOfWeek)dayOfWeekOfYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day {
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = year;
    dateComponents.month = month;
    dateComponents.day = day;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *firstDayOfMonthOfYear = [calendar dateFromComponents:dateComponents];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"en_US"];
    dateFormatter.dateFormat = @"EEEE";
    NSString *dayOfWeekName = [dateFormatter stringFromDate:firstDayOfMonthOfYear];
    CCDayOfWeek dayOfWeek = kSunday;
    if ([dayOfWeekName isEqualToString:@"Sunday"]) {
        dayOfWeek = kSunday;
    } else if ([dayOfWeekName isEqualToString:@"Monday"]) {
        dayOfWeek = kMonday;
    } else if ([dayOfWeekName isEqualToString:@"Tuesday"]) {
        dayOfWeek = kTuesday;
    } else if ([dayOfWeekName isEqualToString:@"Wednesday"]) {
        dayOfWeek = kWednesday;
    } else if ([dayOfWeekName isEqualToString:@"Thursday"]) {
        dayOfWeek = kThursday;
    } else if ([dayOfWeekName isEqualToString:@"Friday"]) {
        dayOfWeek = kFriday;
    } else if ([dayOfWeekName isEqualToString:@"Saturday"]) {
        dayOfWeek = kSaturday;
    }
    return dayOfWeek;
}

+ (NSUInteger)numberOfdaysOfYear:(NSUInteger)year month:(NSUInteger)month {
    switch (month) {
        case 1:// Jan
        case 3:// Mar
        case 5:// May
        case 7:// Jul
        case 8:// Aug
        case 10:// Oct
        case 12:// Dec
            return 31;
            break;
            
        case 4:// Apr
        case 6:// Jun
        case 9:// Sep
        case 11:// Nov
            return 30;
            break;
            
        case 2:// Feb
            if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
                return 29;
            } else {
                return 28;
            }
            break;
            
        default:
            return 0;
            break;
    }
}

@end
