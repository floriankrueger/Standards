[![GitHub release](https://img.shields.io/github/release/floriankrueger/Standards.svg)](https://github.com/floriankrueger/Standards)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/v/Standards.svg)](https://github.com/floriankrueger/Standards)
[![Swift](https://img.shields.io/badge/Swift-3.1-orange.svg)](https://swift.org)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/floriankrueger/Standards/master/LICENSE)
[![Gitmoji](https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=flat-square)](https://gitmoji.carloscuesta.me)
[![HelpWanted](https://img.shields.io/badge/help-wanted-blue.svg?style=flat)](https://github.com/floriankrueger/Standards/issues) 

# Standards

Standards was created to enable iOS, tvOS, watchOS and macOS developers that need to support legacy
systems (pre iOS 10.0, pre tvOS 10.0, pre watchOS 3.0 and pre macOS 10.12) to use the 
[Measurement](https://developer.apple.com/reference/foundation/Measurement) API that’s included in 
these systems’s Foundation.

## Compatibility

- [x] iOS 8.0
- [x] tvOS 9.0
- [x] watchOS 2.0
- [x] macOS 10.10

## Features

Compared to [Measurement](https://developer.apple.com/reference/foundation/Measurement), Standards
has the following features:

- [x] Creating and Converting Standards (e.g. kilometers to miles)
- [ ] Calculate with Standards (Operators +, -, \*, /)
- [x] Compare Standards
- [ ] Measurement Formatting

Compared to [Measurement](https://developer.apple.com/reference/foundation/Measurement), Standards 
supports the following Units:

- [ ] Acceleration: [UnitAcceleration](https://developer.apple.com/reference/foundation/UnitAcceleration)
- [ ] Angle: [UnitAngle](https://developer.apple.com/reference/foundation/unitangle)
- [x] Area: [UnitArea](https://developer.apple.com/reference/foundation/unitarea)
- [ ] ConcentrationMass: [UnitConcentrationMass](https://developer.apple.com/reference/foundation/unitconcentrationmass)
- [ ] Dispersion: [UnitDispersion](https://developer.apple.com/reference/foundation/unitdispersion)
- [ ] Duration: [UnitDuration](https://developer.apple.com/reference/foundation/unitduration)
- [ ] ElectricCharge: [UnitElectricCharge](https://developer.apple.com/reference/foundation/unitelectriccharge)
- [ ] ElectricCurrent: [UnitElectricCurrent](https://developer.apple.com/reference/foundation/unitelectriccurrent)
- [ ] ElectricPotentialDifference: [UnitElectricPotentialDifference](https://developer.apple.com/reference/foundation/unitelectricpotentialdifference)
- [ ] ElectricResistance: [UnitElectricResistance](https://developer.apple.com/reference/foundation/unitelectricresistance)
- [ ] Energy: [UnitEnergy](https://developer.apple.com/reference/foundation/unitenergy)
- [ ] Frequency: [UnitFrequency](https://developer.apple.com/reference/foundation/unitfrequency)
- [ ] FuelEfficiency: [UnitFuelEfficiency](https://developer.apple.com/reference/foundation/unitfuelefficiency)
- [ ] Illuminance: [UnitIlluminance](https://developer.apple.com/reference/foundation/unitilluminance)
- [x] Length: [UnitLength](https://developer.apple.com/reference/foundation/unitlength)
- [ ] Mass: [UnitMass](https://developer.apple.com/reference/foundation/unitmass)
- [ ] Power: [UnitPower](https://developer.apple.com/reference/foundation/unitpower)
- [ ] Pressure: [UnitPressure](https://developer.apple.com/reference/foundation/unitpressure)
- [x] Speed: [UnitSpeed](https://developer.apple.com/reference/foundation/unitspeed) (thx @samritchie)
- [x] Temperature: [UnitTemperature](https://developer.apple.com/reference/foundation/unittemperature) (thx @samritchie)
- [ ] Volume: [UnitVolume](https://developer.apple.com/reference/foundation/unitvolume)

## Remarks

Standards is designed to be API-compatible with Foundation _on the call site_. So you can just use 
it like you would use [Measurement](https://developer.apple.com/reference/foundation/Measurement), 
with _one exception_:

For compatibility reasons with iOS 10.0+, tvOS 10.0+, watchOS 3.0+ and macOS 10.12+ it’s impractical
to actually call the class `Measurement` (b/c you then would always have to namespace it). So just 
replace `Measurement` with `Standard`.

## Basic Usage 

```swift
let distance = Standard(value: 106.4, unit: UnitLength.kilometers)
// → 106.4 km

let distanceInMeters = distance.converted(to: .meters)
// → 106400 m
let distanceInMiles = distance.converted(to: .miles)
// → 66.1140591795394 mi
let distanceInFurlongs = distance.converted(to: .furlongs)
// → 528.911158832419 fur 
```

## Installation

As for now, you can use [Carthage](https://github.com/Carthage/Carthage) or 
[CocoaPods](https://cocoapods.org) to install Standards using a dependency manager or do it 
manually.

### Carthage

To integrate Standards into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "floriankrueger/Standards"
```

### CocoaPods

Make sure your `Podfile` contains all of the following lines.

```ruby
use_frameworks!
platform :ios, '8.0'
 
pod 'Standards'
```

Then run `pod install`.

### Manually

To do it 'by hand' take the following files and add them to your project:

- `Sources/Standard.swift`
- `Sources/Unit/BasedDimension.swift`
- `Sources/Unit/Dimension.swift`
- `Sources/Unit/Unit.swift`
- `Sources/Conversion/UnitConverter.swift`
- `Sources/Conversion/UnitConverterLinear.swift`

 And any of the Units that you need:

- `Sources/Unit/UnitLength.swift`
- `Sources/Unit/UnitArea.swift`
- `Sources/Unit/UnitSpeed.swift`
- `Sources/Unit/UnitTemperature.swift`

## Contributors

Thanks for contributing to this project!

- [Sam Ritchie](https://github.com/samritchie)

## License

Standards is released under the [MIT License](LICENSE.md).
