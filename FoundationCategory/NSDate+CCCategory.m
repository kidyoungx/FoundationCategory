//
//  NSDate+CCCategory.m
//  SmartOWON
//
//  Created by Kid Young on 5/27/14.
//  Copyright (c) 2014 Yang XiHong. All rights reserved.
//

#import "NSDate+CCCategory.h"

@implementation NSDate (CCCategory)

#pragma mark - GMT TimeZone values

- (NSInteger)era
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitEra fromDate:self];
    return components.era;
}

- (NSInteger)year
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear fromDate:self];
    return components.year;
}

- (NSInteger)month
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitMonth fromDate:self];
    return components.month;
}

- (NSInteger)weekOfYear
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitWeekOfYear fromDate:self];
    return components.weekOfYear;
}

- (NSInteger)weekOfMonth
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitWeekOfMonth fromDate:self];
    return components.weekOfMonth;
}

- (NSInteger)day
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitDay fromDate:self];
    return components.day;
}

- (NSInteger)hour
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitHour fromDate:self];
    return components.hour;
}

- (NSInteger)minute
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitMinute fromDate:self];
    return components.minute;
}

- (NSInteger)second
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDateComponents *components = [calendar components:NSCalendarUnitSecond fromDate:self];
    return components.second;
}

+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = year;
    dateComponents.month = month;
    dateComponents.day = day;
    dateComponents.hour = hour;
    dateComponents.minute = minute;
    dateComponents.second = second;
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:[NSTimeZone timeZoneWithName:@"GMT"]];
    NSDate *date = [calendar dateFromComponents:dateComponents];
    return date;
}

+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute
{
    return [NSDate dateForYear:year month:month day:day hour:hour minute:minute second:0];
}

+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour
{
    return [NSDate dateForYear:year month:month day:day hour:hour minute:0 second:0];
}

+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day
{
    return [NSDate dateForYear:year month:month day:day hour:0 minute:0 second:0];
}

+ (NSDate *)dateForYear:(NSInteger)year month:(NSInteger)month
{
    return [NSDate dateForYear:year month:month day:1 hour:0 minute:0 second:0];
}

+ (NSDate *)dateForYear:(NSInteger)year
{
    return [NSDate dateForYear:year month:1 day:1 hour:0 minute:0 second:0];
}

#pragma mark - Local TimeZone values

- (NSInteger)localEra
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitEra fromDate:self];
    return components.era;
}

- (NSInteger)localYear
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear fromDate:self];
    return components.year;
}

- (NSInteger)localMonth
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitMonth fromDate:self];
    return components.month;
}

- (NSInteger)localWeekOfYear
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitWeekOfYear fromDate:self];
    return components.weekOfYear;
}

- (NSInteger)localWeekOfMonth
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitWeekOfMonth fromDate:self];
    return components.weekOfMonth;
}

- (NSInteger)localDay
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitDay fromDate:self];
    return components.day;
}

- (NSInteger)localHour
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitHour fromDate:self];
    return components.hour;
}

- (NSInteger)localMinute
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitMinute fromDate:self];
    return components.minute;
}

- (NSInteger)localSecond
{
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDateComponents *components = [calendar components:NSCalendarUnitSecond fromDate:self];
    return components.second;
}

+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = year;
    dateComponents.month = month;
    dateComponents.day = day;
    dateComponents.hour = hour;
    dateComponents.minute = minute;
    dateComponents.second = second;
    NSCalendar *calendar = NSCalendar.currentCalendar;
    [calendar setTimeZone:NSTimeZone.localTimeZone];
    NSDate *date = [calendar dateFromComponents:dateComponents];
    return date;
}

+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute
{
    return [NSDate dateForLocalYear:year month:month day:day hour:hour minute:minute second:0];
}

+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour
{
    return [NSDate dateForLocalYear:year month:month day:day hour:hour minute:0 second:0];
}

+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day
{
    return [NSDate dateForLocalYear:year month:month day:day hour:0 minute:0 second:0];
}

+ (NSDate *)dateForLocalYear:(NSInteger)year month:(NSInteger)month
{
    return [NSDate dateForLocalYear:year month:month day:1 hour:0 minute:0 second:0];
}

+ (NSDate *)dateForLocalYear:(NSInteger)year
{
    return [NSDate dateForLocalYear:year month:1 day:1 hour:0 minute:0 second:0];
}

#pragma mark - Adding

+ (NSDate *)dateForAddingYears:(NSInteger)years
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = years;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *date = [calendar dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    return date;
}

+ (NSDate *)dateForAddingMonths:(NSInteger)months
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.month = months;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *date = [calendar dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    return date;
}

+ (NSDate *)dateForAddingDays:(NSInteger)days
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.day = days;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *date = [calendar dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    return date;
}

+ (NSDate *)firstDayForWeekOfDate:(NSDate *)date
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
//    calendar.firstWeekday = 1;
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:date];
    NSInteger dayOfWeek = [NSCalendar.currentCalendar components:NSCalendarUnitWeekday fromDate:date].weekday;
    dateComponents.day = ([dateComponents day] - (dayOfWeek - 1));
    NSDate *firstDayOfWeek = [calendar dateFromComponents:dateComponents];
    return firstDayOfWeek;
}

+ (NSDate *)lastDayForWeekOfDate:(NSDate *)date
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
//    calendar.firstWeekday = 1;
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:date];
    NSInteger dayOfWeek = [NSCalendar.currentCalendar components:NSCalendarUnitWeekday fromDate:date].weekday;
    dateComponents.day = ([dateComponents day] + (7 - dayOfWeek));
    NSDate *lastDayOfWeek = [calendar dateFromComponents:dateComponents];
    return lastDayOfWeek;
}

@end
