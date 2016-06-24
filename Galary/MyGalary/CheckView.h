//
//  CheckView.h
//  Galary
//
//  Created by joshuali on 16/6/14.
//  Copyright © 2016年 joshuali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckView : UIView
- (void) setIndex : (NSUInteger) i;
- (void) setChecked : (BOOL) c;
- (BOOL) isChecked;
- (void) setShowIndex:(BOOL)showIndex;
@end
