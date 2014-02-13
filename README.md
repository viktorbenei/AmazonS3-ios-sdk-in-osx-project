AmazonS3-ios-sdk-in-osx-project
===============================

A simple project compiled with Amazon's S3 SDK for iOS - with minimal modifications to compile for OS X Cocoa.

This is meant to be a template project, you can pretty much just copy-paste -it then start to work with it.

If you want to create your own project (or you have to integrate it into an existing project) do the following:
- copy the whole "AmazonS3SDK" folder to the new project
- because this SDK is not ARC compatible you'll have to set the "-fno-objc-arc" compiler flag for every file in the "AmazonS3SDK" folder (in project settings -> Build Phases)
- add the following #imports to your .pch:
#import "AmazonLogger.h"
#import "AmazonErrorHandler.h"
