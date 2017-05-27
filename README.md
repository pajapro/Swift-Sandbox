[![Language Swift 4.0](https://img.shields.io/badge/Language-Swift%204.0-orange.svg)](https://swift.org)

# Swift-Sandbox

## ↔️ Dependencies
In order to run this project you need to:
1. install [`swiftenv`](https://github.com/kylef/swiftenv) 
2. download the latest snapshot of Swift by `$ swiftenv install 4.0-DEVELOPMENT-SNAPSHOT-2017-05-24-a` (_26/05/2017_)
3. use the latest snapshot locally by `$ swiftenv local 4.0-DEVELOPMENT-SNAPSHOT-2017-05-24-a`
4. `Swift-Sandbox` _executable_ [has a dependency](https://github.com/pajapro/Swift-Sandbox/blob/master/Package.swift#L8) on [Swift-Sandbox-Model](https://github.com/pajapro/Swift-Sandbox-Model) _library_, which contains a model structs and extensions.

## 🛠 Compile and run
To compile the executable run `swift build`. Afterwards run executable by`$ ./.build/debug/Swift-Sandbox` - that's it 🎉
