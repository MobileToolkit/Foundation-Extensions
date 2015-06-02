//
//  NSObject+PropertyArray.h
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyArray)

/*!Gets array with names of all declared properties in class
 \returns An array of property names
 */
+ (NSArray *)propertyNamesArray;

@end
