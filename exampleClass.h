#ifndef EXAMPLE_CLASS_H
#define EXAMPLE_CLASS_H

#include <emscripten/emscripten.h>
#include <emscripten/bind.h>

class Example
{
public:

    void testMethod();
};

EMSCRIPTEN_BINDINGS(emscripten_example)
        {
                emscripten::class_<Example>("Example")
                        .function("testMethod", &Example::testMethod)
                ;
        }

#endif // EXAMPLE_CLASS_H
