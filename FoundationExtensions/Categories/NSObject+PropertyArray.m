//
//  NSObject+PropertyArray.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "NSObject+PropertyArray.h"

#import <objc/runtime.h>

@implementation NSObject (PropertyArray)

+ (NSArray *)propertyNamesArray {
    u_int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    NSMutableArray *propertyArray = [NSMutableArray arrayWithCapacity:count];
    
    for ( int i = 0; i < count; i++ ) {
        [propertyArray addObject:[NSString stringWithCString:property_getName(properties[i]) encoding:NSUTF8StringEncoding]];
    }
    
    free(properties);
    
    return [NSArray arrayWithArray:propertyArray];
}

@end
