//
//  NSObject+CCCategory.h
//  SmartOWON
//
//  Created by Kid Young on 3/10/14.
//  Copyright (c) 2014 Yang XiHong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CCCategory)

- (void)propertiesTraversalSelector:(SEL)selector withObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION;

- (BOOL)swizzleInstanceMethod:(SEL)originalSelector withInstanceMethod:(SEL)alternateSelector error:(NSError**)error;
+ (BOOL)swizzleClassMethod:(SEL)originalSelector withClassMethod:(SEL)alternateSelector error:(NSError**)error;

- (BOOL)overrideInstanceMethod:(SEL)originalSelector withInstanceMethod:(SEL)alternateSelector error:(NSError**)error;
+ (BOOL)overrideClassMethod:(SEL)originalSelector withClassMethod:(SEL)alternateSelector error:(NSError**)error;

@end
