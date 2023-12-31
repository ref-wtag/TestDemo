//
//  StringsTests.swift
//  TestDemoTests
//
//  Created by Refat E Ferdous on 12/28/23.
//

import XCTest
@testable import TestDemo

final class StringsTests: XCTestCase {

    var sut : CheckoutViewModel = CheckoutViewModel(cart : TestCart())
    
    func testMakePayment(){
        sut.makePayment()
    }
    

}

class TestCart : CartProtocol {
    var products: [String : Double] = [ : ]
    
    func getPayableAmount() -> Double {
        return 0
    }
    
    
}
