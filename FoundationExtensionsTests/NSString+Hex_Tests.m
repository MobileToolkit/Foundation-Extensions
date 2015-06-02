//
//  NSString+Hex_Tests.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

@import Foundation;
@import XCTest;

#import "NSString+Hex.h"

@interface NSString_Hex_Tests : XCTestCase

@end

@implementation NSString_Hex_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testData {
    NSData *hexData = @"BC78EB2533".data;
    
    unsigned char bytes[] = {0xBC, 0x78, 0xeb, 0x25, 0x33};
    NSData *expectedData = [NSData dataWithBytes:bytes length:sizeof(bytes)];
    
    XCTAssertTrue([hexData isEqualToData:expectedData], @"Must be equal");
}

@end
