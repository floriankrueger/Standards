//
//  UnitTemperatureTests.swift
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

import XCTest
import Standards

class UnitTemperatureTests: XCTestCase {
    
    let baseUnit: Standards.UnitTemperature = UnitTemperature.baseUnit()
    
    func testKelvin() {
        
        let temperature = Standard(value: 1, unit: UnitTemperature.kelvin)
        
        let linearConverter = Standards.UnitTemperature.kelvin.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(temperature.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseTemperature = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseTemperature.converted(to: .kelvin).value, 1)
        
    }
    
    func testCelsius() {
        
        let temperature = Standard(value: 1, unit: UnitTemperature.celsius)
        
        let linearConverter = Standards.UnitTemperature.celsius.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(temperature.converted(to: baseUnit).value, linearConverter.constant + linearConverter.coefficient)
        
        let baseTemperature = Standard(value: linearConverter.constant + linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseTemperature.converted(to: .celsius).value, 1)
        
    }
    
    func testFahrenheit() {
        
        let temperature = Standard(value: 1, unit: UnitTemperature.fahrenheit)
        
        let linearConverter = Standards.UnitTemperature.fahrenheit.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(temperature.converted(to: baseUnit).value,  linearConverter.constant + linearConverter.coefficient)
        
        let baseTemperature = Standard(value: linearConverter.constant + linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqualWithAccuracy(baseTemperature.converted(to: .fahrenheit).value, 1, accuracy: 0.0000001)
        
    }
    
}

#if os(Linux)
    extension UnitLengthTests {
        static var allTests : [(String, (UnitLengthTests) -> () throws -> Void)] {
            return [
                ("testKelvin",          testKelvin),
                ("testCelsius",         testCelsius),
                ("testFahrenheit",      testFahrenheit)
            ]
        }
    }
#endif
