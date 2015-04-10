//
//  MIPayGetRequest.m
//  MISpring
//
//  Created by Yujian Xu on 13-3-26.
//  Copyright (c) 2013年 Husor Inc. All rights reserved.
//

#import "MIPayGetRequest.h"

@implementation MIPayGetRequest

- (id) init
{
    self = [super init];

    return self;
}

- (void) setPage:(NSInteger)page
{
    [self.fields setObject:[NSString stringWithFormat:@"%ld", (long)page] forKey:@"page"];
}
- (void) setPageSize:(NSInteger)pageSize
{
    [self.fields setObject:[NSString stringWithFormat:@"%ld", (long)pageSize] forKey:@"page_size"];
}
- (NSString *) getMethod
{
    return @"mizhe.pay.get";
}

@end
