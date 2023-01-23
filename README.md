This repo is currently for experimenting with webassembly versions of DSP within IQEngine frontend, like the FFTs and convolutions

Started from https://github.com/bobbiec/react-wasm-demo

The following was done on Ubuntu 22 (through WSL), couldn't get it to work on Windows

## Setting up emscripten toolchain
```
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh
 ```

 ## Building the module
 cd emsdk
 source ./emsdk_env.sh
 cd to this repo
 make
 copy the .mjs file to the public folder of IQEngine/src