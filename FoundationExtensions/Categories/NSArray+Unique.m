//
//  NSArray+Unique.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "NSArray+Unique.h"

@implementation NSArray (Unique)

- (NSArray *)uniqueArrayForProperty:(NSString *)propertyName {
    NSMutableArray *filteredArray = [NSMutableArray array];
    
    for ( id obj in self ) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K ==[c] %@", [obj valueForKey:propertyName]];
        if ( NO == ( 0 < [[filteredArray filteredArrayUsingPredicate:predicate] count] ) ) {
            [filteredArray addObject:obj];
        }
    }
    
    return [NSArray arrayWithArray:filteredArray];
}

@end
