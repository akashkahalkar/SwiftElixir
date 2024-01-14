//
//  ArrayExtensionTests.swift
//  
//
//  Created by akash kahalkar on 14/01/24.
//

import XCTest

final class ArrayExtensionTests: SwiftElixirExtensionTest {

    func testArrayExtension() {
        XCTAssertFalse([].isNotEmpty)
        XCTAssertTrue([1,2,3,4,5].isNotEmpty)
    }
    
    func testSafeIndex() {
        let a = [1,2,4]
        XCTAssertNil(a[safe: 3])
        XCTAssertNotNil(a[safe: 2])
    }
}
