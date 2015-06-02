//
//  NSObject+PropertyArray_Tests.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

@import Foundation;
@import XCTest;

#import "NSObject+PropertyArray.h"

// TestObject
// ----------------------------
@interface TestObject : NSObject
@property (nonatomic, strong) NSString *propertyStringStrong;
@property (nonatomic, assign) NSInteger propertyInteger;
@property (nonatomic, weak) NSString *propertyStringWeak;
@end
@implementation TestObject
@end
// ----------------------------


@interface NSObject_PropertyArray_Tests : XCTestCase

@end

@implementation NSObject_PropertyArray_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testPropertyNamesArray {
    NSArray *properties = [TestObject propertyNamesArray];
    NSArray *expectedProperties = @[@"propertyStringStrong", @"propertyInteger", @"propertyStringWeak"];
    
    XCTAssertTrue([properties isEqualToArray:expectedProperties], @"Must be equal");
}

@end
