# awkward changelog

All notable changes to this project will be documented in this file.

## [0.1.0] - 2025-10-26

### Added

- Support for functions as objects: they can be assigned, passed, and called using `.call()`
- Built-in functions have been added: `id`
- Support for methods on types:
  - for strings: `string.upper()`, `string.lower()`, `string.len()`
  - for arrays: `array.append()`, `array.extend()`, `array.len()`
  - for functions: `function.call()`, `function.name()`
- Import modules with aliases: `import module as my_module`
- Support for built-in modules (e.g., math) with automatic function registration.
- Creating objects and structures: `TYPE_OBJECT` and `TYPE_STRUCT` with fields and methods

### Changed

- The member expression mechanism for accessing properties of structs, arrays, and strings has been rewritten.
- Function calls and work with scope and closure have been optimized.
- Storing of string lengths in the `TYPE_STRING` object when creating has been implemented.

### Fixed

- The calculation of the string length in `string.len()` has been fixed
- The `.name()` method call for anonymous and named functions (`<anonymous>` for lambda functions) has been fixed.
- A bug with accessing properties of imported modules has been fixed.
