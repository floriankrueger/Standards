//
//  UnitSpeedTests.swift
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

class UnitSpeedTests: XCTestCase {
    
    let baseUnit: Standards.UnitSpeed = UnitSpeed.baseUnit()
    
    func testMetersPerSecond() {
        
        let speed = Standard(value: 1, unit: UnitSpeed.metersPerSecond)
        
        let linearConverter = Standards.UnitSpeed.metersPerSecond.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(speed.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseSpeed = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseSpeed.converted(to: .metersPerSecond).value, 1)
        
    }
    
    func testKilometersPerHour() {
        
        let speed = Standard(value: 1, unit: UnitSpeed.kilometersPerHour)
        
        let linearConverter = Standards.UnitSpeed.kilometersPerHour.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(speed.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseSpeed = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseSpeed.converted(to: .kilometersPerHour).value, 1)
        
    }
    
    func testMilesPerHour() {
        
        let speed = Standard(value: 1, unit: UnitSpeed.milesPerHour)
        
        let linearConverter = Standards.UnitSpeed.milesPerHour.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(speed.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseSpeed = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseSpeed.converted(to: .milesPerHour).value, 1)
        
    }
    
    func testKnots() {
        
        let speed = Standard(value: 1, unit: UnitSpeed.knots)
        
        let linearConverter = Standards.UnitSpeed.knots.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(speed.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseSpeed = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseSpeed.converted(to: .knots).value, 1)
        
    }
    
}

#if os(Linux)
    extension UnitSpeedTests {
        static var allTests : [(String, (UnitSpeedTests) -> () throws -> Void)] {
            return [
                ("testMetersPerSecond",     testMetersPerSecond),
                ("testKilometersPerHour",   testKilometersPerHour),
                ("testMilePerHour",         testMilePerHour),
                ("testKnots",               testKnots)
            ]
        }
    }
#endif
