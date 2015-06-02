//
//  NSData+Hex_Tests.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

@import Foundation;
@import XCTest;

#import "NSData+Hex.h"

@interface NSData_Hex_Tests : XCTestCase

@end

@implementation NSData_Hex_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testHexString {
    unsigned char bytes[] = {0xAF, 0x65, 0xEB, 0x21, 0x45};
    NSData *data = [NSData dataWithBytes:bytes length:sizeof(bytes)];
    
    NSString *hexString = data.hexString;
    NSString *expectedString = @"AF65EB2145";
    
    XCTAssertTrue([hexString isEqualToString:expectedString], @"Must be equal");
}

@end
