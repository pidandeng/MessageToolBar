//  PdMessageToolBar
//
//  Created by jimushiguang on 16/10/31.
//  Copyright © 2016年 jimushiguang. All rights reserved.
//


#import "DXChatBarMoreView.h"

#define CHAT_BUTTON_SIZE 50
#define INSETS 8

@implementation DXChatBarMoreView

- (instancetype)initWithFrame:(CGRect)frame type:(ChatMoreType)type
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setupSubviewsForType:type];
    }
    return self;
}

- (void)setupSubviewsForType:(ChatMoreType)type
{
    self.backgroundColor = [UIColor clearColor];
    CGFloat insets = (self.frame.size.width - 4 * CHAT_BUTTON_SIZE) / 5;
    
    UIView *topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 1)];
    topLine.backgroundColor = [UIColor colorWithRed:230/255.0 green:231/255.0 blue:231/255.0 alpha:1];
    [self addSubview:topLine];
    
    UIView *line1 = [[UIView alloc] initWithFrame:CGRectMake(self.frame.size.width/4-0.5, 0, 1, self.frame.size.height)];
    line1.backgroundColor = [UIColor colorWithRed:230/255.0 green:231/255.0 blue:231/255.0 alpha:1];
    [self addSubview:line1];
    
    UIView *line2 = [[UIView alloc] initWithFrame:CGRectMake(self.frame.size.width/4*2-0.5, 0, 1, self.frame.size.height)];
    line2.backgroundColor = [UIColor colorWithRed:230/255.0 green:231/255.0 blue:231/255.0 alpha:1];
    [self addSubview:line2];
    
    UIView *line3 = [[UIView alloc] initWithFrame:CGRectMake(self.frame.size.width/4*3-0.5, 0, 1, self.frame.size.height)];
    line3.backgroundColor = [UIColor colorWithRed:230/255.0 green:231/255.0 blue:231/255.0 alpha:1];
    [self addSubview:line3];
    
    _photoButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_photoButton setFrame:CGRectMake(insets, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
    _photoButton.center = CGPointMake(self.frame.size.width/8, self.frame.size.height/2);
    [_photoButton setImage:[UIImage imageNamed:@"Down_Button_picture"] forState:UIControlStateNormal];
    [_photoButton setImage:[UIImage imageNamed:@"Down_Button_picture"] forState:UIControlStateHighlighted];
    [_photoButton addTarget:self action:@selector(photoAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_photoButton];
    
    _locationButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_locationButton setFrame:CGRectMake(insets * 3 + CHAT_BUTTON_SIZE * 2, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
    _locationButton.center = CGPointMake(self.frame.size.width/8*5, self.frame.size.height/2);
    [_locationButton setImage:[UIImage imageNamed:@"Down_Button_location"] forState:UIControlStateNormal];
    [_locationButton setImage:[UIImage imageNamed:@"Down_Button_location"] forState:UIControlStateHighlighted];
    [_locationButton addTarget:self action:@selector(locationAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_locationButton];
    
    
    
    _takePicButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [_takePicButton setFrame:CGRectMake(insets * 2 + CHAT_BUTTON_SIZE, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
    _takePicButton.center = CGPointMake(self.frame.size.width/8*3, self.frame.size.height/2);
    [_takePicButton setImage:[UIImage imageNamed:@"Down_Button_camere"] forState:UIControlStateNormal];
    [_takePicButton setImage:[UIImage imageNamed:@"Down_Button_camere"] forState:UIControlStateHighlighted];
    [_takePicButton addTarget:self action:@selector(takePicAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_takePicButton];

    CGRect frame = self.frame;
    if (type == ChatMoreTypeChat) {
//        frame.size.height = 150;
//        _audioCallButton =[UIButton buttonWithType:UIButtonTypeCustom];
//        [_audioCallButton setFrame:CGRectMake(insets * 4 + CHAT_BUTTON_SIZE * 3, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
//        [_audioCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_audioCall"] forState:UIControlStateNormal];
//        [_audioCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_audioCallSelected"] forState:UIControlStateHighlighted];
//        [_audioCallButton addTarget:self action:@selector(takeAudioCallAction) forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:_audioCallButton];
//        
//        _videoCallButton =[UIButton buttonWithType:UIButtonTypeCustom];
//        [_videoCallButton setFrame:CGRectMake(insets, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
//        [_videoCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCall"] forState:UIControlStateNormal];
//        [_videoCallButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCallSelected"] forState:UIControlStateHighlighted];
//        [_videoCallButton addTarget:self action:@selector(takeVideoCallAction) forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:_videoCallButton];
//        
//        _setBgButton =[UIButton buttonWithType:UIButtonTypeCustom];
//        [_setBgButton setFrame:CGRectMake(insets * 2 + CHAT_BUTTON_SIZE, 10 * 2 + CHAT_BUTTON_SIZE + 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
//        [_setBgButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCall"] forState:UIControlStateNormal];
//        [_setBgButton setImage:[UIImage imageNamed:@"chatBar_colorMore_videoCallSelected"] forState:UIControlStateHighlighted];
//        [_setBgButton addTarget:self action:@selector(setBgAction) forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:_setBgButton];
        _setBgButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_setBgButton setFrame:CGRectMake(insets * 4 + CHAT_BUTTON_SIZE * 3, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        _setBgButton.center = CGPointMake(self.frame.size.width/8*7, self.frame.size.height/2);
        [_setBgButton setImage:[UIImage imageNamed:@"Down_Button_gift"] forState:UIControlStateNormal];
        [_setBgButton setImage:[UIImage imageNamed:@"Down_Button_gift"] forState:UIControlStateHighlighted];
        [_setBgButton addTarget:self action:@selector(giftAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_setBgButton];
        
        frame.size.height = 80;
    }
    else if (type == ChatMoreTypeGroupChat)
    {
        _setBgButton =[UIButton buttonWithType:UIButtonTypeCustom];
        [_setBgButton setFrame:CGRectMake(insets * 4 + CHAT_BUTTON_SIZE * 3, 10, CHAT_BUTTON_SIZE , CHAT_BUTTON_SIZE)];
        _setBgButton.center = CGPointMake(self.frame.size.width/8*7, self.frame.size.height/2);
        [_setBgButton setImage:[UIImage imageNamed:@"Down_Button_SetBg"] forState:UIControlStateNormal];
        [_setBgButton setImage:[UIImage imageNamed:@"Down_Button_SetBg"] forState:UIControlStateHighlighted];
        [_setBgButton addTarget:self action:@selector(setBgAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_setBgButton];
        
        frame.size.height = 80;
    }
    self.frame = frame;
}

#pragma mark - action

- (void)takePicAction{
    if(_delegate && [_delegate respondsToSelector:@selector(moreViewTakePicAction:)]){
        [_delegate moreViewTakePicAction:self];
    }
}

- (void)photoAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewPhotoAction:)]) {
        [_delegate moreViewPhotoAction:self];
    }
}

- (void)locationAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewLocationAction:)]) {
        [_delegate moreViewLocationAction:self];
    }
}

- (void)takeAudioCallAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewAudioCallAction:)]) {
        [_delegate moreViewAudioCallAction:self];
    }
}

- (void)takeVideoCallAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewVideoCallAction:)]) {
        [_delegate moreViewVideoCallAction:self];
    }
}

- (void)setBgAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewSetBgAction:)]) {
        [_delegate moreViewSetBgAction:self];
    }
}

- (void)giftAction{
    if (_delegate && [_delegate respondsToSelector:@selector(moreViewGiftAction:)]) {
        [_delegate moreViewGiftAction:self];
    }
}

@end
