//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  SecondBoard_iPhone.m
//  djjskl;
//
//  Created by sang on 5/8/13.
//    Copyright (c) 2013 alfred sang. All rights reserved.
//

#import "SecondBoard_iPhone.h"
#import "AppBoard_iPhone.h"

#pragma mark -

@implementation SecondBoard_iPhone

- (void)load
{
	[super load];
}

- (void)unload
{
	[super unload];
}

#pragma mark Signal

- (void)handleUISignal_BeeUIBoard:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
	{
        self.view.hintString = @"This is the second board";
        self.view.backgroundColor = [UIColor whiteColor];

        [self showNavigationBarAnimated:NO];
        [self setTitleString:@"Second"];
//		[self showBarButton:UINavigationBar.BARBUTTON_LEFT title:@"Menu"];
//		[self showBarButton:UINavigationBar.BARBUTTON_RIGHT title:<#STRING#>];
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
	}
    else if ( [signal is:BeeUIBoard.LOAD_DATAS] )
    {
    }
    else if ( [signal is:BeeUIBoard.FREE_DATAS] )
    {
    }
    else if ( [signal is:BeeUIBoard.WILL_APPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.DID_APPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.WILL_DISAPPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.DID_DISAPPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.ORIENTATION_CHANGED] )
    {
    }
    else if ( [signal is:BeeUIBoard.ANIMATION_BEGIN] )
    {
    }
    else if ( [signal is:BeeUIBoard.ANIMATION_FINISH] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_WILL_SHOW] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_DID_SHOWN] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_WILL_HIDE] )
    {
    }
    else if ( [signal is:BeeUIBoard.MODALVIEW_DID_HIDDEN] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_WILL_PRESENT] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_DID_PRESENT] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_WILL_DISMISS] )
    {
    }
    else if ( [signal is:BeeUIBoard.POPOVER_DID_DISMISSED] )
    {
    }
}

- (void)handleUISignal_UINavigationBar:(BeeUISignal *)signal
{
//	if ( [signal is:UINavigationBar.BARBUTTON_LEFT_TOUCHED] )
//	{
//		[[AppBoard_iPhone sharedInstance] toggleMenu];
//	}
//	else if ( [signal is:UINavigationBar.BARBUTTON_RIGHT_TOUCHED] )
//	{
//		// TODO
//	}
}

#pragma mark Notification

- (void)handleNotification:(NSNotification *)notification
{
    [super handleNotification:notification];
}

#pragma mark Message

- (void)handleMessage:(BeeMessage *)msg
{
    [super handleMessage:msg];
}

@end
