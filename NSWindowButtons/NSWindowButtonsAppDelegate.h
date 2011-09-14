//
//  NSWindowButtonsAppDelegate.h
//  NSWindowButtons
//
//  Created by Randall Brown on 9/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSWindowButtonsAppDelegate : NSObject <NSApplicationDelegate> {
   NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
