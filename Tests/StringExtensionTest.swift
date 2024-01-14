//
//  StringExtensionTest.swift
//  
//
//  Created by akash kahalkar on 14/01/24.
//

import XCTest

final class StringExtensionTest: SwiftElixirExtensionTest {
    
    func testIsNotEmpty() {
        XCTAssertTrue("test".isNotEmpty)
        XCTAssertFalse("".isNotEmpty)
    }
    
    func testSHA256HashFunction() {
        let testString = "test String"
        XCTAssertEqual("7f4e5fcf76d0d6c231ef506e57678c5b",
                       testString.getHash(type: .md5))
    }
    
    func testMD5Function() {
        let testString = "test String"
        XCTAssertEqual("4cadbbb27360f47e3084d8b649ef4be5e320e20b11e2eae37a57f48c41b18953",
                       testString.getHash(type: .sha256))
    }
}
