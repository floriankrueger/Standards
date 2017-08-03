//
//  UnitLength.swift
//  Standards
//
//  Created by Florian Krüger on 11 Apr 2017.
//  Copyright © 2017 Standards. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/// The UnitLength class is an `Dimension` subclass that encapsulates units of measure for length.
///
/// You typically use instances of `UnitLength` to represent specific quantities of length using the
/// `Standards` class.
///
/// - Note: The `baseUnit` is `.meters`
///
public class UnitLength: Dimension {
    
    // MARK: BasedDimension
    
    public override class func baseUnit() -> UnitLength {
        return UnitLength.meters
    }
    
    // MARK: Init
    
    public override init(symbol: String, converter: UnitConverter) {
        super.init(symbol: symbol, converter: converter)
    }
    
}

extension UnitLength {
    
    /// Megameters
    ///
    /// Returns the megameters unit of length.
    ///
    public static var megameters: UnitLength {
        return UnitLength(symbol: "Mm",
                          converter: UnitConverterLinear(coefficient: 1_000_000.0))
    }
    
    /// Kilometers
    ///
    /// Returns the kilometers unit of length.
    ///
    public static var kilometers: UnitLength {
        return UnitLength(symbol: "km",
                          converter: UnitConverterLinear(coefficient: 1_000.0))
    }
    
    /// Hectometers
    ///
    /// Returns the hectometers unit of length.
    ///
    public static var hectometers: UnitLength {
        return UnitLength(symbol: "hm",
                          converter: UnitConverterLinear(coefficient: 100.0))
    }
    
    /// Decameters
    ///
    /// Returns the decameters unit of length.
    ///
    public static var decameters: UnitLength {
        return UnitLength(symbol: "dam",
                          converter: UnitConverterLinear(coefficient: 10.0))
    }
    
    /// Meters
    ///
    /// Returns the meters unit of length.
    /// - Nore: This is the `baseUnit` for `UnitLength`
    ///
    public static var meters: UnitLength {
        return UnitLength(symbol: "m",
                          converter: UnitConverterLinear(coefficient: 1.0))
    }
    
    /// Decimeters
    ///
    /// Returns the decimeters unit of length.
    ///
    public static var decimeters: UnitLength {
        return UnitLength(symbol: "dm",
                          converter: UnitConverterLinear(coefficient: 0.1))
    }
    
    /// Centimeters
    ///
    /// Returns the centimeters unit of length.
    ///
    public static var centimeters: UnitLength {
        return UnitLength(symbol: "cm",
                          converter: UnitConverterLinear(coefficient: 0.01))
    }
    
    /// Millimeters
    ///
    /// Returns the millimeters unit of length.
    ///
    public static var millimeters: UnitLength {
        return UnitLength(symbol: "mm",
                          converter: UnitConverterLinear(coefficient: 0.001))
    }
    
    /// Micrometers
    ///
    /// Returns the micrometers unit of length.
    ///
    public static var micrometers: UnitLength {
        return UnitLength(symbol: "µm",
                          converter: UnitConverterLinear(coefficient: 0.000_001))
    }
    
    /// Nanometers
    ///
    /// Returns the nanometers unit of length.
    ///
    public static var nanometers: UnitLength {
        return UnitLength(symbol: "nm",
                          converter: UnitConverterLinear(coefficient: 1e-9))
    }
    
    /// Picometers
    ///
    /// Returns the picometers unit of length.
    ///
    public static var picometers: UnitLength {
        return UnitLength(symbol: "pm",
                          converter: UnitConverterLinear(coefficient: 1e-12))
    }
    
    /// Inches
    ///
    /// Returns the inches unit of length.
    ///
    public static var inches: UnitLength {
        return UnitLength(symbol: "in",
                          converter: UnitConverterLinear(coefficient: 0.025_4))
    }
    
    /// Feet
    ///
    /// Returns the feet unit of length.
    ///
    public static var feet: UnitLength {
        return UnitLength(symbol: "ft",
                          converter: UnitConverterLinear(coefficient: 0.304_8))
    }
    
    /// Yards
    ///
    /// Returns the yards unit of length.
    ///
    public static var yards: UnitLength {
        return UnitLength(symbol: "yd",
                          converter: UnitConverterLinear(coefficient: 0.914_4))
    }
    
    /// Miles
    ///
    /// Returns the miles unit of length.
    ///
    public static var miles: UnitLength {
        return UnitLength(symbol: "mi",
                          converter: UnitConverterLinear(coefficient: 1_609.34))
    }
    
    /// Scandinavian Miles
    ///
    /// Returns the scandinavianMiles unit of length.
    ///
    public static var scandinavianMiles: UnitLength {
        return UnitLength(symbol: "smi",
                          converter: UnitConverterLinear(coefficient: 10_000.0))
    }
    
    /// Light Years
    ///
    /// Returns the lightyears unit of length.
    ///
    public static var lightyears: UnitLength {
        return UnitLength(symbol: "ly",
                          converter: UnitConverterLinear(coefficient: 9.461e+15))
    }
    
    /// Nautical Miles
    ///
    /// Returns the nauticalMiles unit of length.
    ///
    public static var nauticalMiles: UnitLength {
        return UnitLength(symbol: "NM",
                          converter: UnitConverterLinear(coefficient: 1_852.0))
    }
    
    /// Fathoms
    ///
    /// Returns the fathoms unit of length.
    ///
    public static var fathoms: UnitLength {
        return UnitLength(symbol: "ftm",
                          converter: UnitConverterLinear(coefficient: 1.828_8))
    }
    
    /// Furlongs
    ///
    /// Returns the furlongs unit of length.
    ///
    public static var furlongs: UnitLength {
        return UnitLength(symbol: "fur",
                          converter: UnitConverterLinear(coefficient: 201.168))
    }
    
    /// Astronomical Units
    ///
    /// Returns the astronomicalUnits unit of length.
    ///
    public static var astronomicalUnits: UnitLength {
        return UnitLength(symbol: "ua",
                          converter: UnitConverterLinear(coefficient: 1.496e+11))
    }
    
    /// Parsecs
    ///
    /// Returns the parsecs unit of length.
    ///
    public static var parsecs: UnitLength {
        return UnitLength(symbol: "pc",
                          converter: UnitConverterLinear(coefficient: 3.086e+16))
    }
    
}
