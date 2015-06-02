//
//  NSArray+Unique.h
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Unique)

/*!Returns an array unique objects
 
 The uniqueness is determined using the given propertyName. If there is more than one object with the same propertyName value only one of them will be in the resulting array (which one it can be random pick).
 
 \param propertyName
 The property to use when determining uniqueness
 
 \returns Uniue array of objects
 */
- (NSArray *)uniqueArrayForProperty:(NSString *)propertyName;

@end
