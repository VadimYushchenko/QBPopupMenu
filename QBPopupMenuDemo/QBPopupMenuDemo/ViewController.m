//
//  ViewController.m
//  QBPopupMenuDemo
//
//  Created by Tanaka Katsuma on 2013/11/22.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import "ViewController.h"

#import "QBPopupMenu.h"
#import "QBPlasticPopupMenu.h"

@interface ViewController ()

@property (nonatomic, strong) QBPopupMenu *popupMenu;
@property (nonatomic, strong) QBPlasticPopupMenu *plasticPopupMenu;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    QBPopupMenuItem *item = [QBPopupMenuItem itemWithTitle:@"Hello" target:self action:@selector(action)];
    item.textColor = [UIColor redColor];
    item.font = [UIFont systemFontOfSize:14];
    QBPopupMenuItem *item2 = [QBPopupMenuItem itemWithTitle:@"Cut" target:self action:@selector(action)];
    QBPopupMenuItem *item3 = [QBPopupMenuItem itemWithTitle:@"Copy" target:self action:@selector(action)];
    QBPopupMenuItem *item4 = [QBPopupMenuItem itemWithTitle:@"Delete" target:self action:@selector(action)];
    QBPopupMenuItem *item5 = [QBPopupMenuItem itemWithImage:[UIImage imageNamed:@"clip"] target:self action:@selector(action)];
    QBPopupMenuItem *item6 = [QBPopupMenuItem itemWithTitle:@"Delete" image:[UIImage imageNamed:@"trash"] target:self action:@selector(action)];
    
    NSArray *items = @[item, item2, item3, item4, item5,item6];
    
    QBPopupMenu *popupMenu = [[QBPopupMenu alloc] initWithItems:items];
    popupMenu.itemsSize = CGSizeMake(50, 50);
    popupMenu.showSeparator = NO;
    popupMenu.showPagenator = YES;
    popupMenu.height = 50;
    popupMenu.color = [UIColor blackColor];
    popupMenu.highlightedColor = [[UIColor colorWithRed:0.941 green:0.949 blue:0.957 alpha:1.000] colorWithAlphaComponent:0.8];
    self.popupMenu = popupMenu;
    
    QBPlasticPopupMenu *plasticPopupMenu = [[QBPlasticPopupMenu alloc] initWithItems:items];
    plasticPopupMenu.height = 40;
    self.plasticPopupMenu = plasticPopupMenu;
}


- (IBAction)showPopupMenu:(id)sender
{
    UIButton *button = (UIButton *)sender;
    [self.popupMenu showInView:self.view targetRect:button.frame animated:YES];
}

- (IBAction)showPlasticPopupMenu:(id)sender
{
    UIButton *button = (UIButton *)sender;
    [self.plasticPopupMenu showInView:self.view targetRect:button.frame animated:YES];
}

- (void)action
{
    NSLog(@"*** action");
}

@end
