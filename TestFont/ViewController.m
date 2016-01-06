//
//  ViewController.m
//  TestFont
//
//  Created by Linf on 16/1/6.
//  Copyright © 2016年 Linf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray * fontArrays = [[UIFont familyNames] sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSString *str1 = (NSString *)obj1;
        NSString *str2 = (NSString *)obj2;
        return [str1 compare:str2];
    }];
    for(NSString *fontfamilyname in fontArrays)
    {
        NSLog(@"family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname])
        {
            NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------");
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 200)];
    label.text = @"兰亭黑字体\n\n这是汉字中文\nABCDEFGHIJK\nabcdefghijk\n1234567890";
    UIFont *font = [UIFont fontWithName:@"FZLTHK--GBK1-0" size:26];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = font;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
