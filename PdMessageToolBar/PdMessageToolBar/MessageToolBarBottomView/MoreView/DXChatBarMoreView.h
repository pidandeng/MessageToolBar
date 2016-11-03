//  PdMessageToolBar
//
//  Created by jimushiguang on 16/10/31.
//  Copyright © 2016年 jimushiguang. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef enum{
    ChatMoreTypeChat,
    ChatMoreTypeGroupChat,
}ChatMoreType;

@protocol DXChatBarMoreViewDelegate;
@interface DXChatBarMoreView : UIView

@property (nonatomic,assign) id<DXChatBarMoreViewDelegate> delegate;

@property (nonatomic, strong) UIButton *photoButton;
@property (nonatomic, strong) UIButton *takePicButton;
@property (nonatomic, strong) UIButton *locationButton;
@property (nonatomic, strong) UIButton *videoButton;
@property (nonatomic, strong) UIButton *audioCallButton;
@property (nonatomic, strong) UIButton *videoCallButton;

@property (nonatomic, strong) UIButton *setBgButton;

- (instancetype)initWithFrame:(CGRect)frame type:(ChatMoreType)type;

- (void)setupSubviewsForType:(ChatMoreType)type;

@end

@protocol DXChatBarMoreViewDelegate <NSObject>

@required
- (void)moreViewTakePicAction:(DXChatBarMoreView *)moreView;
- (void)moreViewPhotoAction:(DXChatBarMoreView *)moreView;
- (void)moreViewLocationAction:(DXChatBarMoreView *)moreView;
- (void)moreViewAudioCallAction:(DXChatBarMoreView *)moreView;
- (void)moreViewVideoCallAction:(DXChatBarMoreView *)moreView;
- (void)moreViewGiftAction:(DXChatBarMoreView *)moreView;

@optional
- (void)moreViewSetBgAction:(DXChatBarMoreView *)moreView;

@end
