//
//  MIBeibeiCategoryGetModel.m
//  MISpring
//
//  Created by husor on 14-10-17.
//  Copyright (c) 2014年 Husor Inc. All rights reserved.
//

#import "MIBeibeiCatModel.h"

@implementation MIBeibeiCatModel
@synthesize catId = _catId;
@synthesize catName = _catName;

#pragma mark NSCoding methods
///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.catId = [decoder decodeObjectForKey:@"catId"];
        self.catName = [decoder decodeObjectForKey:@"catName"];
    }
    return self;
}
///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)encodeWithCoder:(NSCoder*)encoder {
    [encoder encodeObject:self.catId forKey:@"catId"];
    [encoder encodeObject:self.catName forKey:@"catName"];
}

@end
