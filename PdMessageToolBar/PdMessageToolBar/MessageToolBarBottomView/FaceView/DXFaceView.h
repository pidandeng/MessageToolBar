//  PdMessageToolBar
//
//  Created by jimushiguang on 16/10/31.
//  Copyright © 2016年 jimushiguang. All rights reserved.
//


#import <UIKit/UIKit.h>

#import "FacialView.h"

@protocol DXFaceDelegate <FacialViewDelegate>

@required
- (void)selectedFacialView:(NSString *)str isDelete:(BOOL)isDelete;
- (void)sendFace;

@end


@interface DXFaceView : UIView <FacialViewDelegate>

@property (nonatomic, assign) id<DXFaceDelegate> delegate;

- (BOOL)stringIsFace:(NSString *)string;

@end
