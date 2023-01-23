matrixMultiply.wasm: matrixMultiply.mjs
matrixMultiply.mjs: matrixMultiply.c
	emcc --no-entry matrixMultiply.c -o matrixMultiply.mjs  \
	  --pre-js locateFile.js  \
	  -s ENVIRONMENT='web'  \
	  -s EXPORT_NAME='createModule'  \
	  -s USE_ES6_IMPORT_META=0  \
	  -s EXPORTED_FUNCTIONS='["_add", "_matrixMultiply", "_malloc", "_free"]'  \
	  -s EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'  \
	  -O3

.PHONY: clean
clean:
	rm matrixMultiply.wasm matrixMultiply.mjs