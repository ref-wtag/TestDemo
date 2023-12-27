//
//  TestDemoTests.swift
//  TestDemoTests
//
//  Created by Refat E Ferdous on 12/27/23.
//

import XCTest
@testable import TestDemo

class TestDemoTests: XCTestCase {

    func testAddStuff() {
        
        let math = MathStuff()
        
        let result = math.addNumbers(x: 1, y: 2)
        XCTAssertEqual(result, 3)
//        XCTAssertTrue()
//        XCTAssertFalse()
//        XCTAssertNil()
//        XCTAssertNotNil()
    }
     
     func testMultiplyStuff() {
         
         let math = MathStuff()
         
         let result = math.multiplyNumbers(x: 10, y: 2)
         XCTAssertEqual(result, 20)
     }
     
     func testDivideStuff() {
         
         let math = MathStuff()
         
         let result = math.divideNumbers(x: 6, y: 2)
         XCTAssertEqual(result, 3)
     }
     
   

}
