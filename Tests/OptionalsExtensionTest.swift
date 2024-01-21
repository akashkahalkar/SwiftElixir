//
//  File.swift
//
//
//  Created by akash kahalkar on 16/01/24.
//

import XCTest

final class OptionalsExtensionTest: SwiftElixirExtensionTest {
    func testOptionalBoolean() {
        var result: Bool? = nil
        XCTAssertFalse(result.falseIfNil)
        XCTAssertTrue(result.trueIfNil)
    }
    
    func testOptionalInteger() {
        var number: Int? = nil
        XCTAssertNotNil(number.zeroIfNil)
    }
    
    func testOptionalString() {
        var string: String? = nil
        XCTAssertNotNil(string.emptyIfNil)
        string = "test"
        XCTAssertEqual(string, "test")
    }
    
    func testOptionalArray() {
        var array: [Int]? = nil
        XCTAssertNotNil(array.emptyIfNil)
    }
    
    func testOptionalDictionary() {
        var dictionary: [Any]? = nil
        XCTAssertNotNil(dictionary.emptyIfNil)
    }
}
