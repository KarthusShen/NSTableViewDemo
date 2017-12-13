//
//  ViewController.m
//  NSTableViewDemo
//
//  Created by Karthus on 2017/12/12.
//  Copyright © 2017年 Karthus. All rights reserved.
//

#import "ViewController.h"
#import "KTTableRowView.h"

#define KTTableRowViewIdentifier @"KTTableRowView"

@interface ViewController() <NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableView;

- (void)handleClickGesture:(NSClickGestureRecognizer *)click;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
//    NSClickGestureRecognizer * click = [[NSClickGestureRecognizer alloc] initWithTarget:self action:@selector(handleClickGesture:)];
//    [self.view addGestureRecognizer:click];
    
    NSNib *nib = [[NSNib alloc] initWithNibNamed:NSStringFromClass([KTTableRowView class]) bundle:nil];
    [self.tableView registerNib:nib forIdentifier:KTTableRowViewIdentifier];
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)handleClickGesture:(NSClickGestureRecognizer *)click
{
    NSPoint pt = [click locationInView:self.view];
    NSLog(@"point: %f, %f",pt.x, pt.y);
}

#pragma -mark NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 20;
}

#pragma -mark NSTableViewDelegate

- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
{
    NSString *strRow = [NSString stringWithFormat:@"%ld", (long)row];
    KTTableRowView * rowView = [self.tableView makeViewWithIdentifier:KTTableRowViewIdentifier owner:nil];
    [rowView setText:strRow];
    return rowView;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    return 100;
}

//- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row
//{
//    return NO;
//}

@end
