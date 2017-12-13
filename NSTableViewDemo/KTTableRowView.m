//
//  KTTableRowView.m
//  NSTableViewDemo
//
//  Created by Karthus on 2017/12/12.
//  Copyright © 2017年 Karthus. All rights reserved.
//

#import "KTTableRowView.h"

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
    NSLog(@"point: %f, %f",pt.x, pt.y);
    
//    if (CGRectContainsPoint(self.iconImage.frame, pt))
//    {
//        NSLog(@"click on a iconImage.");
//    }
//    else if (CGRectContainsPoint(self.textView.frame, pt))
//    {
//        NSLog(@"click on a textview.");
//    }
//    else
//    {
//        NSLog(@"click on something else.");
//    }
}

@end
