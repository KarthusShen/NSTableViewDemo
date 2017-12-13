//
//  KTTableRowView.m
//  NSTableViewDemo
//
//  Created by Karthus on 2017/12/12.
//  Copyright © 2017年 Karthus. All rights reserved.
//

#import "KTTableRowView.h"

@interface KTTableRowView()

@property (weak) IBOutlet NSImageView *iconImage;
@property (unsafe_unretained) IBOutlet NSTextView *textView;
@property (weak) IBOutlet NSTextField *labelSave;
@property (weak) IBOutlet NSScrollView *borderedTextView;

- (void)handleClickGesture:(NSClickGestureRecognizer *)click;

@end

@implementation KTTableRowView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NSClickGestureRecognizer * click = [[NSClickGestureRecognizer alloc] initWithTarget:self action:@selector(handleClickGesture:)];
    [self addGestureRecognizer:click];
}

- (void)setText:(NSString *)text
{
    _textView.string = text;
}

- (void)handleClickGesture:(NSClickGestureRecognizer *)click
{
    CGPoint pt = [click locationInView:self];
    //NSLog(@"point: %f, %f",pt.x, pt.y);
    
    if (CGRectContainsPoint(self.iconImage.frame, pt))
    {
        NSLog(@"click on a iconImage.");
    }
    else if (CGRectContainsPoint(self.borderedTextView.frame, pt))
    {
        NSLog(@"click on a textview.");
    }
    else if (CGRectContainsPoint(self.labelSave.frame, pt))
    {
        NSLog(@"click on a label");
    }
    else
    {
        NSLog(@"click on something else.");
    }
}

@end
