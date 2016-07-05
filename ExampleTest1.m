//
//  ExampleTest1.m
//  EarlGreyBootcamp
//
//  Created by Pivotal on 2016-06-23.
//  Copyright © 2016 Pivotal. All rights reserved.
//

@import EarlGrey;
#import <XCTest/XCTest.h>

@interface MyFirstEarlGreyTest : XCTestCase
@end

@implementation MyFirstEarlGreyTest

//Task 1

- (void)testPresenceOfKeyWindow {
    [[EarlGrey selectElementWithMatcher:grey_keyWindow()]
     assertWithMatcher:grey_sufficientlyVisible()];
}

- (void)testFirst {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"0")]
     performAction:grey_tap()];
}

- (void)testSecond {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"commentField")]
     performAction:grey_typeText(@"This is a comment.")];
}


- (void)testThird {
    id<GREYMatcher> backButtonMatcher = grey_allOf(grey_accessibilityLabel(@"ETT Pivots"), grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
    [[EarlGrey selectElementWithMatcher:backButtonMatcher]
     performAction:grey_tap()];
}

// Task 2
- (void)testTask2 {
    for (int i = 0; i < 4; i++)
    {
        //Tap on the respective pivot
        [[EarlGrey selectElementWithMatcher:grey_accessibilityLabel([NSString stringWithFormat: @"%d", i])]performAction:grey_tap()];
        
        //Tap into the comment field and type in a comment
        [[EarlGrey selectElementWithMatcher:grey_accessibilityLabel(@"commentField")]performAction:grey_typeText(@"This is a comment.")];
        
        
        //Submit the comment
        id<GREYMatcher> submitMatcher = grey_allOf(grey_accessibilityLabel(@"Submit"),grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
        [[EarlGrey selectElementWithMatcher:submitMatcher]performAction:grey_tap()];
        
        //Acknowledge the submission
        id<GREYMatcher> okMatcher = grey_allOf(grey_accessibilityLabel(@"OK"),grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
        [[EarlGrey selectElementWithMatcher:okMatcher]performAction:grey_tap()];
        
        //Tap back into the main menu 
        id<GREYMatcher> backButtonMatcher = grey_allOf(grey_accessibilityLabel(@"ETT Pivots"), grey_accessibilityTrait(UIAccessibilityTraitButton), nil);
        [[EarlGrey selectElementWithMatcher:backButtonMatcher]performAction:grey_tap()];
    }
}
@end