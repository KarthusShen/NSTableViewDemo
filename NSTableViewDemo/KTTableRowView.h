//
//  KTTableRowView.h
//  NSTableViewDemo
//
//  Created by Karthus on 2017/12/12.
//  Copyright © 2017年 Karthus. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KTTableRowView : NSTableRowView

@property (weak) IBOutlet NSImageView *iconImage;
@property (unsafe_unretained) IBOutlet NSTextView *textView;

- (void)setText: (NSString *)text;

- (void)handleClickGesture:(NSClickGestureRecognizer *)click;

@end
