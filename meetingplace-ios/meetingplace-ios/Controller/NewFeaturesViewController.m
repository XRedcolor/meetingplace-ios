//
//  NewFeaturesViewController.m
//  meetingplace-ios
//
//  Created by XRedcolor on 15/7/30.
//  Copyright (c) 2015年 mirror. All rights reserved.
//

#import "NewFeaturesViewController.h"

@interface NewFeaturesViewController () <UIScrollViewDelegate>

/**
 *  页面
 */
@property (weak, nonatomic) IBOutlet UIScrollView *pageScrollView;
/**
 *  页数
 */
@property (weak, nonatomic) IBOutlet UIPageControl *pageCountPageControl;

@end

@implementation NewFeaturesViewController

#define NEW_FEATURES_PAGE_COUNT 4

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.pageCountPageControl.numberOfPages = NEW_FEATURES_PAGE_COUNT;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.pageScrollView.contentSize = CGSizeMake(MAIN_SCREEN_WIDTH * NEW_FEATURES_PAGE_COUNT, 0);
    
    for (int i = 0; i < NEW_FEATURES_PAGE_COUNT; ++i) {
        UIImageView *pageImageView = [[UIImageView alloc] initWithFrame:CGRectMake(MAIN_SCREEN_WIDTH * i, 0, MAIN_SCREEN_WIDTH, MAIN_SCREEN_HEIGHT)];
        [self.pageScrollView addSubview:pageImageView];
        
        // todo - to delete
        pageImageView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:(NEW_FEATURES_PAGE_COUNT - i) * 0.25];
    }
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.pageCountPageControl.currentPage = (NSUInteger)(scrollView.contentOffset.x / MAIN_SCREEN_WIDTH + 0.5);
}

@end
