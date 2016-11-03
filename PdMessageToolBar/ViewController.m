//
//  ViewController.m
//  PdMessageToolBar
//
//  Created by jimushiguang on 16/10/31.
//  Copyright © 2016年 jimushiguang. All rights reserved.
//

#import "ViewController.h"
#import "PdMessageToolBar/DXMessageToolBar.h"
#import "PdMessageToolBar/MessageToolBarBottomView/MoreView/DXChatBarMoreView.h"

@interface ViewController ()<DXMessageToolBarDelegate,DXChatBarMoreViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation ViewController{
    UILabel *_label;
    DXMessageToolBar *_messageToolBar;
    UIImageView *_imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyBoardHide)];
    [self.view addGestureRecognizer:tap];
    

    _label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width-20, 40)];
    _label.backgroundColor = [UIColor lightGrayColor];
    _label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 10, 200, 200)];
    [self.view addSubview:_imageView];
    
    _messageToolBar = [[DXMessageToolBar alloc] initWithFrame:CGRectMake(0,self.view.frame.size.height - [DXMessageToolBar defaultHeight] , self.view.frame.size.width,[DXMessageToolBar defaultHeight])];
    [_messageToolBar setBackgroundColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]];
    _messageToolBar.delegate = self;

    _messageToolBar.moreView = [[DXChatBarMoreView alloc] initWithFrame:CGRectMake(0, (kVerticalPadding * 2 + kInputTextViewMinHeight),_messageToolBar.frame.size.width, 80) type:ChatMoreTypeChat];
    _messageToolBar.moreView.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    _messageToolBar.moreView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    if ([_messageToolBar.moreView isKindOfClass:[DXChatBarMoreView class]]) {
        [(DXChatBarMoreView *)_messageToolBar.moreView setDelegate:self];
    }

    [self.view addSubview:_messageToolBar];
}

- (void)keyBoardHide{
    [_messageToolBar endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)didSendFace:(NSString *)faceLocalPath{
    NSLog(@"%@",faceLocalPath);
}

- (void)didSendText:(NSString *)text{
    NSLog(@"%@",text);
    _label.text = text;
}

- (void)moreViewTakePicAction:(DXChatBarMoreView *)moreView{
    
}
- (void)moreViewPhotoAction:(DXChatBarMoreView *)moreView{
    [self takePhoto];
}
- (void)moreViewLocationAction:(DXChatBarMoreView *)moreView{
    
}
- (void)moreViewAudioCallAction:(DXChatBarMoreView *)moreView{
    
}
- (void)moreViewVideoCallAction:(DXChatBarMoreView *)moreView{
    
}
- (void)moreViewGiftAction:(DXChatBarMoreView *)moreView{
    
}

-(void)takePhoto{
    
    UIImagePickerController *imagePicker=[[UIImagePickerController alloc] init];
    imagePicker.delegate=self;
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        imagePicker.sourceType=UIImagePickerControllerSourceTypeCamera;
        
    }
    // imagePicker.allowsEditing=YES;
    //    [self.view addSubview:imagePicker.view];
    [self presentViewController:imagePicker animated:YES completion:^{
        
    }];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo {
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"%@",info);
    UIImage *image=[info objectForKey:UIImagePickerControllerOriginalImage];
    
    _imageView.image = image;
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
