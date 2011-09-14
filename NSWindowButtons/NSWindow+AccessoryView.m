//
//  NSWindow+AccessoryView.m
//  NSWindowButtons
//
//  Created by Randall Brown on 9/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSWindow+AccessoryView.h"

@implementation NSWindow (NSWindow_AccessoryView)

-(void)addViewToTitleBar:(NSView*)viewToAdd atXPosition:(CGFloat)x
{
   viewToAdd.frame = NSMakeRect(x, [[self contentView] frame].size.height, viewToAdd.frame.size.width, [self heightOfTitleBar]);
   
   NSUInteger mask = 0;
   if( x > self.frame.size.width / 2.0 )
   {
      mask |= NSViewMinXMargin;
   }
   else
   {
      mask |= NSViewMaxXMargin;
   }
   [viewToAdd setAutoresizingMask:mask | NSViewMinYMargin];
   
   [[[self contentView] superview] addSubview:viewToAdd];
}

-(CGFloat)heightOfTitleBar
{
   NSRect outerFrame = [[[self contentView] superview] frame];
   NSRect innerFrame = [[self contentView] frame];
   
   return outerFrame.size.height - innerFrame.size.height;
}

@end
