//
//  NSURLRequest+SelfSignedCertificate.m
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "NSURLRequest+SelfSignedCertificate.h"

@implementation NSURLRequest (SelfSignedCertificate)

+ (BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host {
    return YES;
}

@end
