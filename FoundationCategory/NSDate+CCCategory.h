//
//  NSDate+CCCategory.h
//  SmartOWON
//
//  Created by Kid Young on 5/27/14.
//  Copyright (c) 2014 Yang XiHong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (CCCategory)

#pragma mark - GMT TimeZone values

- (NSInteger)era;
- (NSInteger)year;
- (NSInteger)month;
- (NSInteger)weekOfYear;
- (NSInteger)weekOfMonth;
- (NSInteger)day;
- (NSInteger)hour;
- (NSInteger)minute;
- (NSInteger)second;

+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second;
+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute;
+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour;
+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month;
+ (NSDate *)dateForYear:(NSInteger)year;

#pragma mark - Local TimeZone values

- (NSInteger)localEra;
- (NSInteger)localYear;
- (NSInteger)localMonth;
- (NSInteger)localWeekOfYear;
- (NSInteger)localWeekOfMonth;
- (NSInteger)localDay;
- (NSInteger)localHour;
- (NSInteger)localMinute;
- (NSInteger)localSecond;

+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second;
+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute;
+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour;
+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month;
+ (NSDate *)dateForLocalYear:(NSInteger)year;

#pragma mark - Adding

+ (NSDate *)dateForAddingYears:(NSInteger)years;
+ (NSDate *)dateForAddingMonths:(NSInteger)months;
+ (NSDate *)dateForAddingDays:(NSInteger)days;

+ (NSDate *)firstDayForWeekOfDate:(NSDate *)date;
+ (NSDate *)lastDayForWeekOfDate:(NSDate *)date;

@end
