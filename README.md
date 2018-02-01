# Emscripten Memory Test

This repository contains small WebAssembly program, which showcases the situation where Emscripten is unable to release memory from the Module object which is supposed to be garbage collected at that point.

Prerequisites to run the program:

1. Emscripten installed and exported to the PATH to support commands like "emcc", "emconfigure", "emmake";
2. Python.

How to run the program:

1. Run ./build.sh;
2. Run ./start_server.sh;
3. Navigate to the localhost:8000/test.html.

Now you can click "Create and destroy Module instance" button to create Module instance inside function scope. Then function quits and thus the object is supposed to be garbage collected and its memory is supposed to be freed. But it doesn't happen in any reasonable amount of time.
