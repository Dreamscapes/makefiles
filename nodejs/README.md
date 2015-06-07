# Node.js targets

These targets are suitable for the Node.js platform.

#### install

Runs `npm install`. Just a handy alias if you are used to work with Make.

#### test

Runs unit tests. Uses [Mocha][mocha-url]. Test files are expected to be in *test* directory. Command line flags can be overriden via `testflags` variable.

#### lint

Lint your files. Uses [ESLint][eslint-url]. Files/folders to lint can be overriden via `lintfiles` variable.

#### docs

Generate API documentation. Uses [JSDoc][jsdoc-url]. Destination folder can be overriden via `docdir` variable. Configuration file's location can be overriden via `jsdocconf` variable.

#### coverage

Generate code coverage report in the *coverage* folder. Uses [Istanbul][istanbul-url]. This target depends on the `test` target.

#### coveralls

Publish code coverage report to the [Coveralls][coveralls-url] service. Works from Travis-CI; if you need to run this target from localhost, please refer to Coveralls' documentation.


[mocha-url]: http://mochajs.org
[eslint-url]: http://eslint.org
[jsdoc-url]: http://usejsdoc.org
[istanbul-url]: https://github.com/gotwarlost/istanbul
[coveralls-url]: https://coveralls.io
