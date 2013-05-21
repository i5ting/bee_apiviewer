//
//  AppBoard_iPhone.m
//  djjskl;
//
//  Created by sang on 5/8/13.
//  Copyright (c) 2013 alfred sang. All rights reserved.
//

#import "AppBoard_iPhone.h"

@implementation AppBoard_iPhone

DEF_SINGLETON( AppBoard_iPhone )

#pragma mark -

- (void)load
{
    [super load];

    _boards = [[NSMutableArray alloc] init];
    [_boards addObject:@"FirstBoard_iPhone"];
    [_boards addObject:@"SecondBoard_iPhone"];
}

- (void)unload
{
	[_boards removeAllObjects];
	[_boards release];

    [super unload];
}

#pragma mark Signal

- (void)handleUISignal_BeeUIBoard:(BeeUISignal *)signal
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
	{
        [BeeUITipsCenter setDefaultContainerView:self.view];
        [BeeUITipsCenter setDefaultBubble:[UIImage imageNamed:@"alertBox.png"]];

        self.view.backgroundColor = [UIColor whiteColor];

        _mainStackGroup = [[BeeUIStackGroup alloc] init];
        [self.view addSubview:_mainStackGroup.view];

        _tabBar = [[BeeUITabBar alloc] init];
        [_tabBar addTitle:@"First"];
        [_tabBar addTitle:@"Second"];
        [self.view addSubview:_tabBar];

        [_tabBar setSelectedIndex:0];
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
        SAFE_RELEASE( _mainStackGroup );
        SAFE_RELEASE( _tabBar );
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
        _tabBar.frame = CGRectMake( 0, self.viewBound.size.height - 49, self.viewBound.size.width, 49 );
        _mainStackGroup.view.frame = CGRectMake( 0, 0, self.viewBound.size.width, self.viewBound.size.height - _tabBar.frame.size.height );
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

- (void)handleUISignal_BeeUITabBar:(BeeUISignal *)signal
{
    if ( [signal is:BeeUITabBar.HIGHLIGHT_CHANGED] )
    {
        [self toggleBoard:_tabBar.selectedIndex];
    }
}

#pragma mark Message

- (void)handleMessage:(BeeMessage *)msg
{
    [super handleMessage:msg];
}

#pragma mark Notification

- (void)handleNotification:(NSNotification *)notification
{
    [super handleNotification:notification];
}

#pragma mark -

- (void)toggleBoard:(NSUInteger)index
{
	NSString * className = [_boards safeObjectAtIndex:index];
	if ( nil == className )
		return;

    BeeUIStack * stack = [_mainStackGroup reflect:className];
    if ( nil == stack )
    {
        CGRect stackFrame;
        stackFrame.origin = CGPointZero;
        stackFrame.size = _mainStackGroup.view.frame.size;

        stack = [BeeUIStack stack:className firstBoardClass:NSClassFromString(className)];
        stack.view.frame = stackFrame;
        [_mainStackGroup append:stack];
    }
    else
    {
        [_mainStackGroup present:stack];
    }
}

@end
