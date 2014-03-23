// NSMutableArrray + Operations.h
//
// Copyright (c) 2013 Harish Kashyap
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

#import <Foundation/Foundation.h>

/**
 `NSMutableArray+Operations` is a category of `NSMutableArray` that implements addtional methods of operations.
 
 ## NSCoding & NSCopying Conformance
 
 Some of the methods in `ArrayOperations` may conform to the `NSCoding` and `NSCopying` protocols.
 None of these methods work if self is nil.
 */
@interface NSMutableArray (Operations)

/**-----------------------------------------------------------------------------
 * @name Performing an Operation
 * -----------------------------------------------------------------------------
 */

/** Returns an immutable copy of only the duplicate objects in the mutable array.
 *
 * The objects that are identical to each other are returned. Example:
 * Input Array = @(first, second, second, second, third, fourth, fourth);
 * Output Array = @(second, second, second, fourth, fourth);
 */
- (NSArray *)duplicateObjects;

/** Returns an immutable copy of only unique objects in the mutable array.
 *
 * The objects that are identical to each other are replaced by just a single item. Example:
 * Input Array = @(first, second, second, second, third, fourth, fourth);
 * Output Array = @(first, second, third, fourth);
 */
- (NSArray *)removeDuplicates;

/** Shuffles the array
 *
 * The objects are shuffled according to the Fisher-Yates algorithms. Example:
 * Input Array = @(first, second, third, fourth, fifth);
 * Output Array = @(fifth, second, fourth, third, first);
 */
- (void)shuffle;

/**-----------------------------------------------------------------------------
 * @name Swapping any Two Objects in the Array.
 * -----------------------------------------------------------------------------
 */
/** Swaps
 *
 * The objects at indices x and y are swapped.
 *
 * @param x Index of Object that is to be swapped with 
 * @paray y Index of Object that is to be swapped by.
 */
- (void)swapObjectAtIndex:(NSUInteger)x withObjectAtIndex:(NSUInteger)y;

@end
