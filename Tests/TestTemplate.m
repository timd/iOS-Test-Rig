#import <GHUnitIOS/GHUnit.h> 
#import <OCMock/OCMock.h>

@interface TestTemplate : GHTestCase { }
@end

@implementation TestTemplate

#pragma mark - Tests

-(void)testSomething{
    GHAssertTrue(YES, @"should be true, is false");
}

- (void)testOCMockPass {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mockTest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mockTest", returnValue, @"Should have returned the expected string");
}

#pragma mark - Housekeeping

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES.
    // Also an async test that calls back on the main thread, you'll probably want to return YES.
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
}

- (void)tearDownClass {
    // Run at end of all tests in the class
}

- (void)setUp {
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}  


@end