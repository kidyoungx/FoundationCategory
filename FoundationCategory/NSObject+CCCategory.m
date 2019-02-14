//
//  NSObject+CCCategory.m
//  SmartOWON
//
//  Created by Kid Young on 3/10/14.
//  Copyright (c) 2014 Yang XiHong. All rights reserved.
//

#include <objc/message.h>
#import "NSObject+CCCategory.h"

@implementation NSObject (CCCategory)

- (void)propertiesTraversalSelector:(SEL)selector withObjects:(id)firstObj, ... {
    unsigned int propertyCount = 0;
    objc_property_t *propertyList = class_copyPropertyList(self.class, &propertyCount);
    for (unsigned int i = 0; i < propertyCount; ++i) {
        objc_property_t property = propertyList[i];
        const char *propertyName = property_getName(property);
        const char *attribute = property_getAttributes(property);
//        SEL selector = sel_registerName(propertyName);
//        id selectorReturn = objc_msgSend(self, selector);
        
        NSString *propertyKey = [NSString stringWithCString:propertyName encoding:NSUTF8StringEncoding];
//        id propertyValue = [self valueForKey:propertyKey];

        switch (attribute[1]) {
            case '@':   // NSObject [Class name]
                if (attribute[3] == 'N' && firstObj) {
                    va_list variable_list;
                    va_start(variable_list, firstObj);
                    BOOL *b = va_arg(variable_list, BOOL *);
                    // [self selector:(string, dictionary, object) propertyName:propertyKey other:(bool, void), nil]
                    NSAssert(0, @"objc_msgSend");
//                    objc_msgSend(self, selector, firstObj, propertyKey, b, nil);
                    va_end(variable_list);
                }
                break;
                
            case '^':   // pointer
                
                break;
                
            case '*':   // char *
                
                break;
                
            case 'B':   // bool
            case 'c':   // char
            case 's':   // short
            case 'i':   // int
            case 'I':   // unsigned
            case 'l':   // long
            case 'q':   // long long
            case 'L':   // unsigned long
            case 'Q':   // unsigned long long
            case 'f':   // float
            case 'd':   // double
                
                break;
                
            default:
                break;
        }
    }
    free(propertyList);
}

- (BOOL)swizzleInstanceMethod:(SEL)originalSelector withInstanceMethod:(SEL)alternateSelector error:(NSError**)error
{
    Class class = self.class;
	Method originalMethod = class_getInstanceMethod(class, originalSelector);
	Method alternateMethod = class_getInstanceMethod(class, alternateSelector);
	if (!originalMethod || !alternateMethod) {
		return NO;
	}
//    IMP originalMethodImplementation = class_getMethodImplementation(class, originalSelector);
//    IMP alternateMethodImplementation = class_getMethodImplementation(class, alternateSelector);
//	class_addMethod(class,
//					originalSelector,
//					originalMethodImplementation,
//					method_getTypeEncoding(originalMethod));
//	class_addMethod(class,
//					alternateSelector,
//					alternateMethodImplementation,
//					method_getTypeEncoding(alternateMethod));
	method_exchangeImplementations(originalMethod, alternateMethod);
	return YES;
}

+ (BOOL)swizzleClassMethod:(SEL)originalSelector withClassMethod:(SEL)alternateSelector error:(NSError**)error
{
	Method originalMethod = class_getClassMethod(self, originalSelector);
	Method alternateMethod = class_getClassMethod(self, alternateSelector);
	if (!originalMethod || !alternateMethod) {
		return NO;
	}
//    IMP originalMethodImplementation = class_getMethodImplementation(self, originalSelector);
//    IMP alternateMethodImplementation = class_getMethodImplementation(self, alternateSelector);
//	class_addMethod(self,
//					originalSelector,
//					originalMethodImplementation,
//					method_getTypeEncoding(originalMethod));
//	class_addMethod(self,
//					alternateSelector,
//					alternateMethodImplementation,
//					method_getTypeEncoding(alternateMethod));
	method_exchangeImplementations(originalMethod, alternateMethod);
	return YES;
}

- (BOOL)overrideInstanceMethod:(SEL)originalSelector withInstanceMethod:(SEL)alternateSelector error:(NSError**)error
{
    Class class = self.class;
	Method originalMethod = class_getInstanceMethod(class, originalSelector);
	Method alternateMethod = class_getInstanceMethod(class, alternateSelector);
	if (!originalMethod || !alternateMethod) {
		return NO;
	}
    IMP alternateMethodImplementation = method_getImplementation(alternateMethod);
    method_setImplementation(originalMethod, alternateMethodImplementation);
    return YES;
}

+ (BOOL)overrideClassMethod:(SEL)originalSelector withClassMethod:(SEL)alternateSelector error:(NSError**)error
{
	Method originalMethod = class_getClassMethod(self, originalSelector);
	Method alternateMethod = class_getClassMethod(self, alternateSelector);
	if (!originalMethod || !alternateMethod) {
		return NO;
	}
    IMP alternateMethodImplementation = method_getImplementation(alternateMethod);
    method_setImplementation(originalMethod, alternateMethodImplementation);
    return YES;
}

@end
