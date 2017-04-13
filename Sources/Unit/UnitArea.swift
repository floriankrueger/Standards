//
//  UnitArea.swift
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

/// The NSUnitArea class is an `Dimension` subclass that encapsulates units of measure for area.
///
/// You typically use instances of `UnitArea` to represent specific quantities of area using the 
/// `Standards` class.
///
/// - Note: The `baseUnit` is `.squareMeters`
///
public class UnitArea: Dimension {
    
    // MARK: BasedDimension
    
    public override class func baseUnit() -> UnitArea {
        return UnitArea.squareMeters
    }

    // MARK: Init
    
    public override init(symbol: String, converter: UnitConverter) {
        super.init(symbol: symbol, converter: converter)
    }
    
}

extension UnitArea {
    
    /// Square Megameters
    ///
    /// Returns the squareMegameters unit of length.
    ///
    public static var squareMegameters: UnitArea {
        return UnitArea(symbol: "Mm²",
                        converter: UnitConverterLinear(coefficient: 1e12))
    }
    
    /// Square Kilometers
    ///
    /// Returns the squareKilometers unit of length.
    ///
    public static var squareKilometers: UnitArea {
        return UnitArea(symbol: "km²",
                        converter: UnitConverterLinear(coefficient: 1_000_000.0))
    }
    
    /// Square Meters
    ///
    /// Returns the squareMeters unit of length.
    /// - Nore: This is the `baseUnit` for `UnitArea`
    ///
    public static var squareMeters: UnitArea {
        return UnitArea(symbol: "m²",
                        converter: UnitConverterLinear(coefficient: 1.0))
    }
    
    /// Square Centimeter
    ///
    /// Returns the squareCentimeters unit of length.
    ///
    public static var squareCentimeters: UnitArea {
        return UnitArea(symbol: "cm²",
                        converter: UnitConverterLinear(coefficient: 0.000_1))
    }
    
    /// Square Millimeters
    ///
    /// Returns the squareMillimeters unit of length.
    ///
    public static var squareMillimeters: UnitArea {
        return UnitArea(symbol: "mm²",
                        converter: UnitConverterLinear(coefficient: 0.000_001))
    }
    
    /// Square Micrometers
    ///
    /// Returns the squareMicrometers unit of length.
    ///
    public static var squareMicrometers: UnitArea {
        return UnitArea(symbol: "µm²",
                        converter: UnitConverterLinear(coefficient: 1e-12))
    }
    
    /// Square Nanometers
    ///
    /// Returns the squareNanometers unit of length.
    ///
    public static var squareNanometers: UnitArea {
        return UnitArea(symbol: "nm²",
                        converter: UnitConverterLinear(coefficient: 1e-18))
    }
    
    /// Square Inches
    ///
    /// Returns the squareInches unit of length.
    ///
    public static var squareInches: UnitArea {
        return UnitArea(symbol: "in²",
                        converter: UnitConverterLinear(coefficient: 0.000_645_16))
    }
    
    /// Square Feet
    ///
    /// Returns the squareFeet unit of length.
    ///
    public static var squareFeet: UnitArea {
        return UnitArea(symbol: "ft²",
                        converter: UnitConverterLinear(coefficient: 0.092_903))
    }
    
    /// Square Yards
    ///
    /// Returns the squareYards unit of length.
    ///
    public static var squareYards: UnitArea {
        return UnitArea(symbol: "yd²",
                        converter: UnitConverterLinear(coefficient: 0.836_127))
    }
    
    /// Square Miles
    ///
    /// Returns the squareMiles unit of length.
    ///
    public static var squareMiles: UnitArea {
        return UnitArea(symbol: "mi²",
                        converter: UnitConverterLinear(coefficient: 2.59e+6))
    }
    
    /// Acres
    ///
    /// Returns the acres unit of length.
    ///
    public static var acres: UnitArea {
        return UnitArea(symbol: "ac",
                        converter: UnitConverterLinear(coefficient: 4_046.86))
    }
    
    /// Ares
    ///
    /// Returns the ares unit of length.
    ///
    public static var ares: UnitArea {
        return UnitArea(symbol: "a",
                        converter: UnitConverterLinear(coefficient: 100.0))
    }
    
    /// Hectares
    ///
    /// Returns the hectares unit of length.
    ///
    public static var hectares: UnitArea {
        return UnitArea(symbol: "ha",
                        converter: UnitConverterLinear(coefficient: 10_000.0))
    }
    
}
