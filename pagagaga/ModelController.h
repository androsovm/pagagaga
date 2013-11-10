//
//  ModelController.h
//  pagagaga
//
//  Created by Michil Androsov on 9/23/13.
//  Copyright (c) 2013 Michil Androsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource> {
   
}
- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;


@end
