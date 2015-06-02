//
//  NSString+Hex.h
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Hex)

/*!Converts hexadecimal string to data bytes
 \returns NSData object
 */
- (NSData *)data;

@end
