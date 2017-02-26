//
//  ViewController.m
//  Tab Bar
//
//  Created by Btrac on 2/26/17.
//  Copyright © 2017 Ferrakkem. All rights reserved.
//

#import "ViewController.h"
#import "TabBarView.h"

@interface ViewController ()<CustomTabBarDelegate>
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
#pragma mark ::: tabbar_call
    [self createTabbar];
}


#pragma mark ::: Tab bar make
-(void) createTabbar
{
    
    TabBarView *tabBarView = [[TabBarView alloc] init];
    [tabBarView setFrame:CGRectMake(0, self.view.bounds.size.height - 60, self.view.bounds.size.width, 60)];
    [tabBarView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    [tabBarView setTabbarImageArray:@[@"History Icon.png", @"Settings Icon.png", @"Users Icon.png"]];
    [tabBarView setTabbarTitleArray:@[@"History", @"Settings", @"Users"]];
    tabBarView.delegate = self;
    [tabBarView initWithTabBar:self.view.frame];
    [self.view addSubview:tabBarView];
}

#pragma mark ::: Tabbar View delegate
- (void) selectedTabBarIndex:(NSInteger)index
{
    NSLog(@"Selected TabBar index  %ld", (long)index);
    
    NSString *storyboardName;
    
    storyboardName = @"Main";
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    
    
    switch (index)
    {
#pragma mark:: History_tab_view_click
        case 1:
        {
            NSLog(@"History");
            self.view.backgroundColor = [UIColor redColor];
            
            //History
            /*
            DashBoardViewController *homeView = [storyBoard instantiateViewControllerWithIdentifier:@"DashBoardViewController"];
            [self.navigationController pushViewController:homeView animated:YES];
            */
        }
            break;
#pragma mark:: User_setting_tab_view_click
        case 2:
            //Setting
        {
            NSLog(@"History 3");
            self.view.backgroundColor = [UIColor blueColor];
            
            /*
            DeviceSetupViewController *lDeviceSetupViewView = [storyBoard instantiateViewControllerWithIdentifier:@"DeviceSetupViewController"];
            [self.navigationController pushViewController:lDeviceSetupViewView animated:YES];
            */
        }
            
            break;
            
#pragma mark:: User_setting_tab_view_click
        case 3:
            //user
        {
            NSLog(@"History 3");
            self.view.backgroundColor = [UIColor grayColor];
            /*
            UserSetUpViewController *UserSetUpView = [storyBoard instantiateViewControllerWithIdentifier:@"UserSetUpViewController"];
            [self.navigationController pushViewController:UserSetUpView animated:YES];
            */
        }
            
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
