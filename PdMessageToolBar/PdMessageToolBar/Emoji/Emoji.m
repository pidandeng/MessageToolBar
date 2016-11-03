//  PdMessageToolBar
//
//  Created by jimushiguang on 16/10/31.
//  Copyright © 2016年 jimushiguang. All rights reserved.
//


#import "Emoji.h"
#import "EmojiEmoticons.h"


@implementation Emoji
+ (NSString *)emojiWithCode:(int)code {
    int sym = EMOJI_CODE_TO_SYMBOL(code);
    return [[NSString alloc] initWithBytes:&sym length:sizeof(sym) encoding:NSUTF8StringEncoding];
}
+ (NSArray *)allEmoji {
    NSMutableArray *array = [NSMutableArray new];
    [array addObjectsFromArray:[EmojiEmoticons allEmoticons]];
    return array;
}
@end
