//
//  UnitAreaTests.swift
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

class UnitAreaTests: XCTestCase {
    
    let baseUnit: Standards.UnitArea = UnitArea.baseUnit()
    
    func testSquareMegameters() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareMegameters)
        
        let linearConverter = Standards.UnitArea.squareMegameters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareMegameters).value, 1)
        
    }
    
    func testSquareKilometers() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareKilometers)
        
        let linearConverter = Standards.UnitArea.squareKilometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareKilometers).value, 1)
        
    }
    
    func testSquareMeters() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareMeters)
        
        let linearConverter = Standards.UnitArea.squareMeters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareMeters).value, 1)
        
    }
    
    func testSquareCentimeter() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareCentimeters)
        
        let linearConverter = Standards.UnitArea.squareCentimeters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareCentimeters).value, 1)
        
    }
    
    func testSquareMillimeters() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareMillimeters)
        
        let linearConverter = Standards.UnitArea.squareMillimeters.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareMillimeters).value, 1)
        
    }
    
    func testSquareMicrometers() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareMicrometers)
        
        let linearConverter = Standards.UnitArea.squareMicrometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareMicrometers).value, 1)
        
    }
    
    func testSquareNanometers() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareNanometers)
        
        let linearConverter = Standards.UnitArea.squareNanometers.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareNanometers).value, 1)
        
    }
    
    func testSquareInches() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareInches)
        
        let linearConverter = Standards.UnitArea.squareInches.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareInches).value, 1)
        
    }
    
    func testSquareFeet() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareFeet)
        
        let linearConverter = Standards.UnitArea.squareFeet.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareFeet).value, 1)
        
    }
    
    func testSquareYards() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareYards)
        
        let linearConverter = Standards.UnitArea.squareYards.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareYards).value, 1)
        
    }
    
    func testSquareMiles() {
        
        let distance = Standard(value: 1, unit: UnitArea.squareMiles)
        
        let linearConverter = Standards.UnitArea.squareMiles.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .squareMiles).value, 1)
        
    }
    
    func testAcres() {
        
        let distance = Standard(value: 1, unit: UnitArea.acres)
        
        let linearConverter = Standards.UnitArea.acres.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .acres).value, 1)
        
    }
    
    func testAres() {
        
        let distance = Standard(value: 1, unit: UnitArea.ares)
        
        let linearConverter = Standards.UnitArea.ares.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .ares).value, 1)
        
    }
    
    func testHectares() {
        
        let distance = Standard(value: 1, unit: UnitArea.hectares)
        
        let linearConverter = Standards.UnitArea.hectares.converter as! Standards.UnitConverterLinear
        XCTAssertEqual(distance.converted(to: baseUnit).value, linearConverter.coefficient)
        
        let baseDistance = Standard(value: linearConverter.coefficient, unit: baseUnit)
        XCTAssertEqual(baseDistance.converted(to: .hectares).value, 1)
        
    }
    
}

#if os(Linux)
    extension UnitAreaTests {
        static var allTests : [(String, (UnitAreaTests) -> () throws -> Void)] {
            return [
                ("testSquareMegameters",    testSquareMegameters),
                ("testSquareKilometers",    testSquareKilometers),
                ("testSquareMeters",        testSquareMeters),
                ("testSquareCentimeter",    testSquareCentimeter),
                ("testSquareMillimeters",   testSquareMillimeters),
                ("testSquareMicrometers",   testSquareMicrometers),
                ("testSquareNanometers",    testSquareNanometers),
                ("testSquareInches",        testSquareInches),
                ("testSquareFeet",          testSquareFeet),
                ("testSquareYards",         testSquareYards),
                ("testSquareMiles",         testSquareMiles),
                ("testAcres",               testAcres),
                ("testAres",                testAres),
                ("testHectares",            testHectares),
            ]
        }
    }
#endif
