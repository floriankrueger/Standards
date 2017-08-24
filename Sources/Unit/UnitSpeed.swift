//
//  UnitSpeed.swift
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

/// The UnitSpeed class is an `Dimension` subclass that encapsulates units of measure for speed.
///
/// You typically use instances of `UnitSpeed` to represent specific speeds using the
/// `Standards` class.
///
/// - Note: The `baseUnit` is `.metersPerSecond`
///
public class UnitSpeed: Dimension {
    
    // MARK: BasedDimension
    
    public override class func baseUnit() -> UnitSpeed {
        return UnitSpeed.metersPerSecond
    }
    
    // MARK: Init
    
    public override init(symbol: String, converter: UnitConverter) {
        super.init(symbol: symbol, converter: converter)
    }
    
}

extension UnitSpeed {
    
    /// Meters per second
    ///
    /// Returns the meters per second unit of speed.
    ///
    public static var metersPerSecond: UnitSpeed {
        return UnitSpeed(symbol: "m/s",
                          converter: UnitConverterLinear(coefficient: 1.0))
    }
    
    /// Kilometers per hour
    ///
    /// Returns the kilometers per hour unit of speed.
    ///
    public static var kilometersPerHour: UnitSpeed {
        return UnitSpeed(symbol: "km/h",
                          converter: UnitConverterLinear(coefficient: 0.277778))
    }
    
    /// Miles per hour
    ///
    /// Returns the miles per hour unit of speed.
    ///
    public static var milesPerHour: UnitSpeed {
        return UnitSpeed(symbol: "mph",
                          converter: UnitConverterLinear(coefficient: 0.44704))
    }
    
    /// Knots
    ///
    /// Returns the knots unit of speed.
    ///
    public static var knots: UnitSpeed {
        return UnitSpeed(symbol: "kn",
                          converter: UnitConverterLinear(coefficient: 0.514444))
    }
    
}
