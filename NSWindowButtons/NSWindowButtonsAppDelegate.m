//
//  NSWindowButtonsAppDelegate.m
//  NSWindowButtons
//
//  Created by Randall Brown on 9/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSWindowButtonsAppDelegate.h"
#import "NSWindow+AccessoryView.h"

@implementation NSWindowButtonsAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
   NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(0, 0, 100, 100)];
   [button setBezelStyle:NSRecessedBezelStyle];
   
   NSButton *closeButton = [NSWindow standardWindowButton:NSWindowZoomButton forStyleMask:self.window.styleMask];

   [self.window addViewToTitleBar:button atXPosition:self.window.frame.size.width - button.frame.size.width - 10];
   [self.window addViewToTitleBar:closeButton atXPosition:70];
}

@end
