// Copyright 2014-present 650 Industries.
// Copyright 2015-present Andrew Toulouse.

#import "NSSet+BKRecursiveDescription.h"

#import "BKDescribable.h"
#import "NSObject+BKRecursiveDescription.h"

@implementation NSSet (BKRecursiveDescription)

- (void)bk_addRecursiveDescriptionToString:(NSMutableString *)string level:(NSUInteger)level
{
  DESCRIBE_SELF(string, self);

  for (NSObject *object in self) {
    DESCRIBE_OBJECT(string, level, @"[*]", object);
  }
}

@end
