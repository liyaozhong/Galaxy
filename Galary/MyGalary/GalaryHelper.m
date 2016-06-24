//
//  GalaryHelper.m
//  Galary
//
//  Created by joshuali on 16/6/24.
//  Copyright © 2016年 joshuali. All rights reserved.
//

#import "GalaryHelper.h"
#import "GalaryRootTableViewController.h"
#import "GalaryGridViewController.h"

@interface GalaryHelper ()
@property (nonatomic, weak) UINavigationController * curNav;
@end

@implementation GalaryHelper

+ (instancetype) sharedInstance
{
    static dispatch_once_t once;
    static id instance;
    dispatch_once(&once, ^{
        instance = [self new];
    });
    return instance;
}

- (void) presentGalary : (UIViewController *) viewController withIncrementalCount : (BOOL) incrementalCount withPickComplete : (void (^)(NSArray<PHAsset*>* assets)) pickComplete withCustomPicker : (NSArray<UIImage*>*) customPickers withCustomPickerHandler : (void (^)(NSUInteger index)) customPickerHandler
{
    UINavigationController * nav = [[UINavigationController alloc] init];
    [nav setViewControllers:@[[[GalaryRootTableViewController alloc] initWithIncrementalCount:incrementalCount withPickComplete:pickComplete withCustomPicker:customPickers withCustomPickerHandler:customPickerHandler], [[GalaryGridViewController alloc]  initWithIncrementalCount:incrementalCount withPickComplete:pickComplete withCustomPicker:customPickers withCustomPickerHandler:customPickerHandler]]];
    [viewController presentViewController:nav animated:YES completion:nil];
    self.curNav = nav;
}

@end