#include "exampleClass.h"

#include <stdio.h>
#include <stdlib.h>

#include <SDL.h>

void Example::testMethod()
{
  printf("Now in test method");

  // This line doesn't let emscripten release Module's occupied memory.
  // Comment it out to let the memory be released with Module object destruction.
    SDL_CreateWindow("", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 300, 300,
                     SDL_WINDOW_SHOWN | SDL_WINDOW_OPENGL);
}
