/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// identity function for calling harmony imports with the correct context
/******/ 	__webpack_require__.i = function(value) { return value; };
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/* no static exports found */
/* all exports used */
/*!*************************!*\
  !*** ./client/index.js ***!
  \*************************/
/***/ (function(module, exports) {

eval("throw new Error(\"Module build failed: SyntaxError: /Users/benjaminhong/Desktop/GHR/sdc/drawers/client/index.js: Unexpected token (5:16)\\n\\n\\u001b[0m \\u001b[90m 3 | \\u001b[39m\\u001b[36mimport\\u001b[39m \\u001b[33mApp\\u001b[39m from \\u001b[32m'./App.jsx'\\u001b[39m\\u001b[33m;\\u001b[39m\\u001b[0m\\n\\u001b[0m \\u001b[90m 4 | \\u001b[39m\\u001b[0m\\n\\u001b[0m\\u001b[31m\\u001b[1m>\\u001b[22m\\u001b[39m\\u001b[90m 5 | \\u001b[39m\\u001b[33mReactDOM\\u001b[39m\\u001b[33m.\\u001b[39mrender(\\u001b[33m<\\u001b[39m\\u001b[33mApp\\u001b[39m \\u001b[33m/\\u001b[39m\\u001b[33m>\\u001b[39m\\u001b[33m,\\u001b[39m document\\u001b[33m.\\u001b[39mgetElementById(\\u001b[32m'aw_root'\\u001b[39m))\\u001b[33m;\\u001b[39m\\u001b[0m\\n\\u001b[0m \\u001b[90m   | \\u001b[39m                \\u001b[31m\\u001b[1m^\\u001b[22m\\u001b[39m\\u001b[0m\\n\\u001b[0m \\u001b[90m 6 | \\u001b[39m\\u001b[0m\\n    at Parser.raise (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:6983:17)\\n    at Parser.unexpected (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:8376:16)\\n    at Parser.parseExprAtom (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9637:20)\\n    at Parser.parseExprSubscripts (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9213:23)\\n    at Parser.parseMaybeUnary (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9193:21)\\n    at Parser.parseExprOps (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9059:23)\\n    at Parser.parseMaybeConditional (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9032:23)\\n    at Parser.parseMaybeAssign (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:8978:21)\\n    at Parser.parseExprListItem (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:10307:18)\\n    at Parser.parseCallExpressionArguments (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9410:22)\\n    at Parser.parseSubscript (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9318:29)\\n    at Parser.parseSubscripts (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9234:19)\\n    at Parser.parseExprSubscripts (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9223:17)\\n    at Parser.parseMaybeUnary (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9193:21)\\n    at Parser.parseExprOps (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9059:23)\\n    at Parser.parseMaybeConditional (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:9032:23)\\n    at Parser.parseMaybeAssign (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:8978:21)\\n    at Parser.parseExpression (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:8928:23)\\n    at Parser.parseStatementContent (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:10795:23)\\n    at Parser.parseStatement (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:10666:17)\\n    at Parser.parseBlockOrModuleBlockBody (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:11242:25)\\n    at Parser.parseBlockBody (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:11229:10)\\n    at Parser.parseTopLevel (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:10597:10)\\n    at Parser.parse (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:12107:10)\\n    at parse (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/parser/lib/index.js:12158:38)\\n    at parser (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/core/lib/transformation/normalize-file.js:168:34)\\n    at normalizeFile (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/core/lib/transformation/normalize-file.js:102:11)\\n    at runSync (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/core/lib/transformation/index.js:44:43)\\n    at runAsync (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/core/lib/transformation/index.js:35:14)\\n    at process.nextTick (/Users/benjaminhong/Desktop/GHR/sdc/drawers/node_modules/@babel/core/lib/transform.js:34:34)\");//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiMC5qcyIsInNvdXJjZXMiOltdLCJtYXBwaW5ncyI6IiIsInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///0\n");

/***/ })
/******/ ]);