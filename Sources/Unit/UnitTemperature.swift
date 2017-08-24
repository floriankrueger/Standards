//
//  UnitLength.swift
//  Standards
//
//  Created by Sam Ritchie on 1 Aug 2017.
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

/// The UnitTemperature class is an `Dimension` subclass that encapsulates units of measure for temperature.
///
/// You typically use instances of `UnitTemperature` to represent specific temperatures using the
/// `Standards` class.
///
/// - Note: The `baseUnit` is `.kelvin`
///
public class UnitTemperature: Dimension {
    
    // MARK: BasedDimension
    
    public override class func baseUnit() -> UnitTemperature {
        return UnitTemperature.kelvin
    }
    
    // MARK: Init
    
    public override init(symbol: String, converter: UnitConverter) {
        super.init(symbol: symbol, converter: converter)
    }
    
}

extension UnitTemperature {
    
    /// Kelvin
    ///
    /// Returns the kelvin temperature unit.
    ///
    public static var kelvin: UnitTemperature {
        return UnitTemperature(symbol: "K",
                          converter: UnitConverterLinear(coefficient: 1.0))
    }
    
    /// Celsius
    ///
    /// Returns the celsius temperature unit.
    ///
    public static var celsius: UnitTemperature {
        return UnitTemperature(symbol: "°C",
                          converter: UnitConverterLinear(coefficient: 1.0, constant: 273.15))
    }
    
    /// Fahrenheit
    ///
    /// Returns the fahrenheit temperature unti.
    ///
    public static var fahrenheit: UnitTemperature {
        return UnitTemperature(symbol: "°F",
                          converter: UnitConverterLinear(coefficient: 0.55555555555556, constant: 255.37222222222427))
    }
    
}
