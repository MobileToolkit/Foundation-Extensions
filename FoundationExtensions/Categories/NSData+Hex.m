//
//  NSData+Hex.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "NSData+Hex.h"

@implementation NSData (Hex)

- (NSString *)hexString {
    NSMutableString *stringBuffer = [NSMutableString stringWithCapacity:(self.length * 2)];
    
    const unsigned char *dataBuffer = [self bytes];
    for ( int i = 0; i < [self length]; ++i ) {
        [stringBuffer appendFormat:@"%02lX", (unsigned long)dataBuffer[i]];
    }
    
    return [stringBuffer copy];
}

@end
