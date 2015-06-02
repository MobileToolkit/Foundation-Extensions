//
//  NSData+Hex.h
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Hex)

/*!Converts object's bytes to hexadecimal string
 \returns Hexadecimal string
 */
- (NSString *)hexString;

@end
