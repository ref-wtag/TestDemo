//
//  CheckoutViewModel.swift
//  TestDemo
//
//  Created by Refat E Ferdous on 12/28/23.
//

import Foundation

protocol CartProtocol {
    
    var products : [String : Double] { get set }
    func getPayableAmount() -> Double
    
}

class CheckoutViewModel {
    
//before dependency injection
//    var cart : Cart = Cart()
//    
//    func makePayment(){
//        print("Made paymemnt of \(cart.getPayableAmount())")
//        
//    }
    
    //after dependency injection
    
    var cart : CartProtocol
    init(cart : CartProtocol){
        self.cart = cart
    }
    
    func makePayment(){
     print("Made paymemnt of \(cart.getPayableAmount())")
        
    }
}

class Cart : CartProtocol{
    
    var products : [String : Double] = ["PRS" : 101860.0, "Fender" : 9832.0]
    
    func getPayableAmount() -> Double{
        var payableAmount = 0.0
        for key in products.keys {
            payableAmount += products[key] ?? 0.0
        }
        
        return payableAmount
    }
}
