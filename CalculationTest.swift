//
//  CalculationTest.swift
//  TestDemoTests
//
//  Created by Refat E Ferdous on 12/27/23.
//

import XCTest
@testable import TestDemo

final class CalculationTest: XCTestCase {

    func testCalculateTipSuccess(){
        
        //Given (Arrange)
        let enteredAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        //When (Act)
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
        //Then (Assert)
        XCTAssertEqual(tip, 25)
        
    }
    
    func testCalculateTipForNegativeValues(){
        
        //Given (Arrange)
        let enteredAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        //When (Act)
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
        //Then (Assert)
        XCTAssertNil(tip)
        
    }
    
    
    

}
