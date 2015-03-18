//
//  NTdefine.h
//  NTLoveWedding
//
//  Created by 李莹 on 15/3/17.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#ifndef NTLoveWedding_NTdefine_h
#define NTLoveWedding_NTdefine_h

#define MainHeight [[UIScreen mainScreen] bounds].size.height
#define MainWidth [[UIScreen mainScreen] bounds].size.width

#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242,2208), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6Mulriple (iPhone6?0.1:0)
#define iPhone6PMulriple (iPhone6Plus?0.1:0)
#define Mulriple (iPhone6Mulriple+iPhone6PMulriple+1)

#define NTWhiteColor @"#FDFEFC"  

#endif
