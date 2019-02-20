//
//  URLMatchTests.m
//  URLMatchTests
//
//  Created by Kid Young on 9/6/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <CinCer/CinCer.h>

@interface URLMatchTests : XCTestCase

@end

@implementation URLMatchTests

- (NSArray *)plistArrayName:(NSString *)name
{
    NSString *path = [[NSBundle bundleForClass:self.class] pathForResource:name ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    return array;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExampleShouldMatch {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *testDictionary = [self plistArrayName:@"URLMatch"];
    for (NSString *string in testDictionary) {
        BOOL result = [string regularExpressionMatchURL:string];
        XCTAssert(result == YES, @"Not Match %@", string);
    }
}

- (void)testExampleShouldNotMatch {
    NSArray *testDictionary = [self plistArrayName:@"URLNotMatch"];
    for (NSString *string in testDictionary) {
        BOOL result = [string regularExpressionMatchURL:string];
        XCTAssert(result == NO, @"Match %@", string);
    }
}

- (void)testExampleShouldMatchRigorous {
    NSArray *testDictionary = [self plistArrayName:@"URLMatchRigorous"];
    for (NSString *string in testDictionary) {
        BOOL result = [string regularExpressionMatchURL:string];
        XCTAssert(result == YES, @"Not Match %@", string);
    }
}

- (void)testExampleShouldNotMatchRigorous {
    NSArray *testDictionary = [self plistArrayName:@"URLNotMatchRigorous"];
    for (NSString *string in testDictionary) {
        BOOL result = [string regularExpressionMatchURL:string];
        XCTAssert(result == NO, @"Match %@", string);
    }
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
