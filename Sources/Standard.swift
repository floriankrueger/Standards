//
//  Standard.swift
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

public struct Standard<UnitType> : Comparable where UnitType: Dimension, UnitType: BasedDimension {
    
    // MARK: Properties
    
    public private(set) var unit: UnitType
    public var value: Double
    
    fileprivate var baseValue: Double {
        guard let baseUnit = type(of: unit).baseUnit() as? UnitType else { return value }
        return self.converted(to: baseUnit).value
    }
    
    // MARK: Conversion
    
    public mutating func convert(to otherUnit: UnitType) {
        let baseUnitValue = unit.converter.baseUnitValue(fromValue: self.value)
        self.value = otherUnit.converter.value(fromBaseUnitValue: baseUnitValue)
        self.unit = otherUnit
    }
    
    public func converted(to otherUnit: UnitType) -> Standard<UnitType> {
        var copy = self
        copy.convert(to: otherUnit)
        return copy
    }
    
    // MARK: Init
    
    public init(value: Double, unit: UnitType) {
        self.value = value
        self.unit = unit
    }
    
}

public func < <UnitType>(lhs: Standard<UnitType>, rhs: Standard<UnitType>) -> Bool where UnitType: Dimension, UnitType: BasedDimension {
    return lhs.baseValue < rhs.baseValue
}

public func == <UnitType>(lhs: Standard<UnitType>, rhs: Standard<UnitType>) -> Bool where UnitType: Dimension, UnitType: BasedDimension {
    return lhs.baseValue == rhs.baseValue
}
