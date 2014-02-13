//
//  AppDelegate.m
//  AmazonS3foriOSinOSX
//
//  Created by Viktor Benei on 2/13/14.
//  Copyright (c) 2014 Viktor Benei. All rights reserved.
//

#import "AppDelegate.h"

#import "S3PutObjectRequest.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    S3PutObjectRequest *por = [[S3PutObjectRequest alloc] initWithKey:@"TestFileName" inBucket:@"TestBucketName"];
    por.contentType = @"image/jpeg";
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"TestImg" ofType:@"png"];
    por.data        = [NSData dataWithContentsOfFile:filePath];
}

@end
