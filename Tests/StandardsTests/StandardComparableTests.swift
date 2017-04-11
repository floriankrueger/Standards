//
//  StandardComparableTests.swift
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

class StandardComparableTests: XCTestCase {
    
    func testEquality() {
        let distance1 = Standard(value: 1_000, unit: UnitLength.meters)
        let distance2 = Standard(value: 1, unit: UnitLength.kilometers)
        XCTAssertTrue(distance1 == distance2)
    }
    
    func testInequality() {
        let distance1 = Standard(value: 1_000, unit: UnitLength.meters)
        let distance2 = Standard(value: 1_000, unit: UnitLength.kilometers)
        XCTAssertFalse(distance1 == distance2)
    }
    
    func testSorting() {
        let distance1 = Standard(value: 1_000, unit: UnitLength.meters)
        let distance2 = Standard(value: 1_000, unit: UnitLength.kilometers)
        XCTAssertTrue(distance1 < distance2)
        XCTAssertFalse(distance1 > distance2)
    }
    
}

#if os(Linux)
    extension StandardComparableTests {
        static var allTests : [(String, (StandardComparableTests) -> () throws -> Void)] {
            return [
                ("testEquality",    testEquality),
                ("testInequality",  testInequality),
                ("testSorting",     testSorting),
            ]
        }
    }
#endif
