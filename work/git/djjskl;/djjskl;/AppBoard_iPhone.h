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
//  AppBoard_iPhone.h
//  djjskl;
//
//  Created by sang on 5/8/13.
//    Copyright (c) 2013 alfred sang. All rights reserved.
//

#import "Bee.h"

@interface AppBoard_iPhone : BeeUIBoard
{
    BeeUIStackGroup *	_mainStackGroup;
    BeeUITabBar *		_tabBar;
    NSMutableArray *	_boards;
}

AS_SINGLETON( AppBoard_iPhone )

- (void)toggleBoard:(NSUInteger)index;

@end
