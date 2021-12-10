//
//  XCTestCase+conformanceProofs.swift
//  
//
//  Created by Jeremy Bannister on 12/10/21.
//

///
public extension XCTestCase {
    
    ///
    func proof_ProperValueType <T: ProperValueType> (_ t: T.Type) { }
    
    ///
    func proof_ProperValueType <T: ProperValueType> (_ t: T) { }
}
