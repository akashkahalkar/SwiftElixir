//
//  DateFormatExtesnionTest.swift
//  
//
//  Created by akash kahalkar on 14/01/24.
//

import XCTest

final class DateFormatExtesnionTest: SwiftElixirExtensionTest {
    
    
    func testCustomDateFormatter() {
        let date = getCustomDate()
        XCTAssertEqual("30", date.getCustomDate(with: "dd"))
        
    }
    
    func testShortDateFormatter() {
        let date = getCustomDate()
        XCTAssertEqual("30/09/20, 7:30 AM".count, date.getShortDate().count) // need to check the shot]rt format for different time zone!
    }
        
    private func getCustomDate() -> Date {
        // Specify date components
        var dateComponents = DateComponents()
        dateComponents.year = 2020
        dateComponents.month = 09
        dateComponents.day = 30
        dateComponents.hour = 7
        dateComponents.minute = 30
        return Calendar.current.date(from: dateComponents)!
    }

}
