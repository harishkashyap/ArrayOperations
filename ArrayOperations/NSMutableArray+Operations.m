// NSMutableArrray + Operations.m
//
// Copyright (c) 2013 Harish Kashyap (http://thevoyagenius.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "NSMutableArray+Operations.h"

@implementation NSMutableArray (Operations)

- (NSArray *)duplicateObjects {
    NSMutableDictionary *objectMap = [[NSMutableDictionary alloc] initWithCapacity:self.count];
    NSMutableArray *duplicateArray = [[NSMutableArray alloc] initWithCapacity:self.count];
    for (id Obj in self) {
        if ([objectMap objectForKey:Obj]) {
            [duplicateArray addObject:Obj];
        }else {
            [objectMap setObject:@"1" forKey:Obj];
        }
    }
    return [duplicateArray copy];
}

- (void)shuffle {
    NSInteger i = self.count - 1;
    while (i > 0) {
        NSInteger j = arc4random() % i;
        [self swapObjectAtIndex:i withObjectAtIndex:j];
        i--;
    }
}

- (void)swapObjectAtIndex:(NSUInteger)x withObjectAtIndex:(NSUInteger)y {
    id objX, objY;
    
    objX = [self objectAtIndex:x];
    objY = [self objectAtIndex:y];
    
    if (objX && objY) {
        [self replaceObjectAtIndex:x withObject:objY];
        [self replaceObjectAtIndex:y withObject:objX];
    }
}

- (NSArray *)removeDuplicates {
    NSSet *uniqueSet = [NSSet setWithArray:self];
    return [uniqueSet allObjects];
}



@end

