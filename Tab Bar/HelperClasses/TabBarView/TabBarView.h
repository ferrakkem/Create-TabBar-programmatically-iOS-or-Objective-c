//
//  TabBarView.h
//  CustomSlideMenu
//
//  Created by Ferrakkem on 02/26/17.
//  Copyright © 2016 Ferrakkem. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomTabBarDelegate <NSObject>
- (void) selectedTabBarIndex:(NSInteger)index;
@end

@interface TabBarView : UIView
{
    UIView *tabbarBg;
}

@property (nonatomic, strong) NSArray *tabbarImageArray;
@property (nonatomic, strong) NSArray *tabbarTitleArray;

@property (nonatomic, weak) id <CustomTabBarDelegate> delegate;

- (void) initWithTabBar:(CGRect)rect;

@end
