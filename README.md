This example shows how setters and getters work in Objective C.

The Apple reference is at: https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/EncapsulatingData/EncapsulatingData.html

In SomeClass, the properties: propOne and propTen defined.

The value of propTen is always propOne * 10.

For example, given this code:

    SomeClass *s = [[SomeClass alloc] init];
    printf("%d, %d\n", s.propOne, s.propTen);
    s.propOne++;
    printf("%d, %d\n", s.propOne, s.propTen);

You will see this output:

    1, 10
    2, 20

What is happening here?

The actual code generated for each property includes setters and getters, by default, the instance variable is prefixed with an underscore, this is to prevent confusion between: self.prop and prop, it's very easy to forget the "self.", which will actually reference the instance variable not execute the setter or getter.

Therefore the code generated in SomeClass.m is:

    // generated code
    @synthesize propOne = _propOne;
    @synthesize propTen = _propTen;
    
    - (NSInteger)propOne {
        return _propOne;
    }
    
    - (void)setPropOne:(NSInteger)propOne {
        _propOne = propOne;
    }
    // end generated code
    
    - (NSInteger)propTen {
        return _propOne * 10;
    }

When self.propOne++ is executed, the following code runs:

    [self setPropOne:[self propOne]];

When self.propTen is executed, the following code runs:

    return _propOne * 10;

Using accessing the instance variables, i.e. variables prefixed by underscore, bypasses the setter or getter.
