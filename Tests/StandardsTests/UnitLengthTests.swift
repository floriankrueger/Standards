//
//  UnitLengthTests.swift
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

import XCTest
import Standards

class UnitLengthTests: XCTestCase {
    
    let baseUnit: Standards.UnitLength = UnitLength.baseUnit()
    
    func testMegameters() {
        
        let distance = Standard(value: 1, unit: UnitLength.megameters)
        
        let linearConverter = Standards.UnitLength.megameters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .megameters).value, 1)
        
    }
    
    func testKilometers() {
        
        let distance = Standard(value: 1, unit: UnitLength.kilometers)
        
        let linearConverter = Standards.UnitLength.kilometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .kilometers).value, 1)
        
    }
    
    func testHectometers() {
        
        let distance = Standard(value: 1, unit: UnitLength.hectometers)
        
        let linearConverter = Standards.UnitLength.hectometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .hectometers).value, 1)
        
    }
    
    func testDecameters() {
        
        let distance = Standard(value: 1, unit: UnitLength.decameters)
        
        let linearConverter = Standards.UnitLength.decameters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .decameters).value, 1)
        
    }
    
    func testMeters() {
        
        let distance = Standard(value: 1, unit: UnitLength.meters)
        
        let linearConverter = Standards.UnitLength.meters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .meters).value, 1)
        
    }
    
    func testDecimeters() {
        
        let distance = Standard(value: 1, unit: UnitLength.decimeters)
        
        let linearConverter = Standards.UnitLength.decimeters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .decimeters).value, 1)
        
    }
    
    func testCentimeters() {
        
        let distance = Standard(value: 1, unit: UnitLength.centimeters)
        
        let linearConverter = Standards.UnitLength.centimeters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .centimeters).value, 1)
        
    }
    
    func testMillimeters() {
        
        let distance = Standard(value: 1, unit: UnitLength.millimeters)
        
        let linearConverter = Standards.UnitLength.millimeters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .millimeters).value, 1)
        
    }
    
    func testMicrometers() {
        
        let distance = Standard(value: 1, unit: UnitLength.micrometers)
        
        let linearConverter = Standards.UnitLength.micrometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .micrometers).value, 1)
        
    }
    
    func testNanometers() {
        
        let distance = Standard(value: 1, unit: UnitLength.nanometers)
        
        let linearConverter = Standards.UnitLength.nanometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .nanometers).value, 1)
        
    }
    
    func testPicometers() {
        
        let distance = Standard(value: 1, unit: UnitLength.picometers)
        
        let linearConverter = Standards.UnitLength.picometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .picometers).value, 1)
        
    }
    
    func testInches() {
        
        let distance = Standard(value: 1, unit: UnitLength.inches)
        
        let linearConverter = Standards.UnitLength.inches.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .inches).value, 1)
        
    }
    
    func testFeet() {
        
        let distance = Standard(value: 1, unit: UnitLength.feet)
        
        let linearConverter = Standards.UnitLength.feet.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .feet).value, 1)
        
    }
    
    func testYards() {
        
        let distance = Standard(value: 1, unit: UnitLength.yards)
        
        let linearConverter = Standards.UnitLength.yards.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .yards).value, 1)
        
    }
    
    func testMiles() {
        
        let distance = Standard(value: 1, unit: UnitLength.miles)
        
        let linearConverter = Standards.UnitLength.miles.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .miles).value, 1)
        
    }
    
    func testScandinavianMiles() {
        
        let distance = Standard(value: 1, unit: UnitLength.scandinavian​Miles)
        
        let linearConverter = Standards.UnitLength.scandinavian​Miles.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .scandinavian​Miles).value, 1)
        
    }
    
    func testLightYears() {
        
        let distance = Standard(value: 1, unit: UnitLength.lightyears)
        
        let linearConverter = Standards.UnitLength.lightyears.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .lightyears).value, 1)
        
    }
    
    func testNauticalMiles() {
        
        let distance = Standard(value: 1, unit: UnitLength.nauticalMiles)
        
        let linearConverter = Standards.UnitLength.nauticalMiles.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .nauticalMiles).value, 1)
        
    }
    
    func testFathoms() {
        
        let distance = Standard(value: 1, unit: UnitLength.fathoms)
        
        let linearConverter = Standards.UnitLength.fathoms.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .fathoms).value, 1)
        
    }
    
    func testFurlongs() {
        
        let distance = Standard(value: 1, unit: UnitLength.furlongs)
        
        let linearConverter = Standards.UnitLength.furlongs.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .furlongs).value, 1)
        
    }
    
    func testAstronomicalUnits() {
        
        let distance = Standard(value: 1, unit: UnitLength.astronomical​Units)
        
        let linearConverter = Standards.UnitLength.astronomical​Units.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .astronomical​Units).value, 1)
        
    }
    
    func testParsecs() {
        
        let distance = Standard(value: 1, unit: UnitLength.parsecs)
        
        let linearConverter = Standards.UnitLength.parsecs.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .parsecs).value, 1)
        
    }
    
}

#if os(Linux)
    extension UnitLengthTests {
        static var allTests : [(String, (UnitLengthTests) -> () throws -> Void)] {
            return [
                ("testMegameters",          testMegameters),
                ("testKilometers",          testKilometers),
                ("testHectometers",         testHectometers),
                ("testDecameters",          testDecameters),
                ("testMeters",              testMeters),
                ("testDecimeters",          testDecimeters),
                ("testCentimeters",         testCentimeters),
                ("testMillimeters",         testMillimeters),
                ("testMicrometers",         testMicrometers),
                ("testNanometers",          testNanometers),
                ("testPicometers",          testPicometers),
                ("testInches",              testInches),
                ("testFeet",                testFeet),
                ("testYards",               testYards),
                ("testMiles",               testMiles),
                ("testScandinavianMiles",   testScandinavianMiles),
                ("testLightYears",          testLightYears),
                ("testNauticalMiles",       testNauticalMiles),
                ("testFathoms",             testFathoms),
                ("testFurlongs",            testFurlongs),
                ("testAstronomicalUnits",   testAstronomicalUnits),
                ("testParsecs",             testParsecs),
            ]
        }
    }
#endif
