//
//  PSDateFieldEditor.m
//  Pester
//
//  Created by Nicholas Riley on 3/1/10.
//  Copyright 2010 Nicholas Riley. All rights reserved.
//

#import "PSDateFieldEditor.h"


@implementation PSDateFieldEditor

- (NSRange)rangeForUserCompletion;
{
    NSRange range = [super rangeForUserCompletion];
    range.length += range.location;
    range.location = 0;
    
    return range;
}

- (void)insertCompletion:(NSString *)word forPartialWordRange:(NSRange)charRange movement:(int)movement isFinal:(BOOL)flag;
{
    // space bar (or right arrow, which is less ideal)
    if (movement == NSRightTextMovement)
	flag = NO;
	
    [super insertCompletion:word forPartialWordRange:charRange movement:movement isFinal:flag];

    if (movement == NSTabTextMovement)
	[self insertTab: nil];
}

@end
