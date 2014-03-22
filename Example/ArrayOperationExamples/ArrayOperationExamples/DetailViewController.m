// DetailViewController.m
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

#import "DetailViewController.h"
#import "NSMutableArray+Operations.h"

@interface DetailViewController ()

@property (nonatomic, strong) NSMutableArray *objects;
@property (nonatomic, strong) NSMutableArray *resultObjects;

- (void)configureInputView;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)configureInputView
{
    self.detailDescriptionLabel.text = [NSString stringWithFormat:@"Input string -> %@", [self.objects description]];
}

- (void)printOutputLabel
{
    self.outputLabel.text = [NSString stringWithFormat:@"Output string -> %@",[self.resultObjects description]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (!_objects) {
        _objects = [[NSMutableArray alloc] initWithObjects:@"First", @"Second", @"Third", @"Fourth", @"Fourth", @"Fifth", @"Sixth", @"Sixth", nil];
    }
    if (!_resultObjects) {
        _resultObjects = [[NSMutableArray alloc] init];
    }
    self.detailDescriptionLabel.numberOfLines = 0;
    self.outputLabel.numberOfLines = 0;
}

- (void)viewWillAppear:(BOOL)animated {
    self.objects = [[NSMutableArray alloc] initWithObjects:@"First", @"Second", @"Third", @"Fourth", @"Fourth", @"Fifth", @"Sixth", @"Sixth", nil];
    [self configureInputView];

    switch (self.operation) {
        case 0:{
            self.resultObjects = [self.objects shuffle];
        }
            break;
        case 1:{
            [self.objects swapObjectAtIndex:1 withObjectAtIndex:3];
            self.resultObjects = self.objects;
        }
            break;
        case 2:{
            self.resultObjects = [[self.objects removeDuplicates] mutableCopy];
        }
            break;
        case 3:{
            self.resultObjects = [[self.objects duplicateObjects] mutableCopy];
        }
            break;
        default:
            break;
    }
    [self printOutputLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
