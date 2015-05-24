// Copyright 2014-present 650 Industries.
// Copyright 2015-present Andrew Toulouse.

#import <Foundation/Foundation.h>

@protocol BKDescribable <NSObject>

@optional
- (void)bk_addRecursiveDescriptionToString:(NSMutableString *)string level:(NSUInteger)level;

@end

@interface NSObject () <BKDescribable>
@end
