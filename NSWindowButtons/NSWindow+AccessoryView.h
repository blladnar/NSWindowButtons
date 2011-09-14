//
//  NSWindow+AccessoryView.h
//  NSWindowButtons
//
//  Created by Randall Brown on 9/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <AppKit/AppKit.h>

@interface NSWindow (NSWindow_AccessoryView)

-(void)addViewToTitleBar:(NSView*)viewToAdd atXPosition:(CGFloat)x;
-(CGFloat)heightOfTitleBar;

@end
