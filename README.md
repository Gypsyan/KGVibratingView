# KGVibratingView

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift3 Compatible](https://img.shields.io/badge/KGVibratingView-Swift3-brightgreen.svg)](https://img.shields.io/badge/KGVibratingView-Swift3-brightgreen.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/KGVibratingView.svg)](https://github.com/Gypsyan/KGVibratingView)

`KGVibratingView` enable custom vibrating action on the iOS View elements


# Installation

## Cocoapods

Install Cocoapods if need be.

```bash
$ gem install cocoapods
```

Add `KGVibratingView` in your `Podfile`.

```ruby
use_frameworks!

pod 'KGVibratingView'
```

Then, run the following command.

```bash
$ pod install
```
## Carthage

Install Carthage if need be.

```bash
$ brew update
$ brew install carthage
```

Add `KGVibratingView` in your `Cartfile`.

```ruby
github "Gypsyan/KGVibratingView"
```

Run `carthage` to build the framework and drag the built `KGVibratingView.framework` into your Xcode project.

# Usage

To use `KGVibratingView` add the `startShakingWith()` method to the `UIView` element.

```
@IBAction func touched(_ sender: UIButton) {
       sender.startShakingWith(direction: .Vertical_Top, numberOfTimes: 140, totalDuration: 5, completion: nil)

   }

```

You can select multiple options in the `startShakingWith` method.

* direction
* numberOfTimes
* totalDuration


# License

Copyright 2016-17 Ananth.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
