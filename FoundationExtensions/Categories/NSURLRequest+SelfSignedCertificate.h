//
//  NSURLRequest+SelfSignedCertificate.h
//  FoundationExtensions
//
//  Created by Sebastian Owodziń on 31/05/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLRequest (SelfSignedCertificate)

+ (BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host;

@end
