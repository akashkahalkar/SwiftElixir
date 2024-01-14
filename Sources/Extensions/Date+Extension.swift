//
//  File.swift
//  
//
//  Created by akash kahalkar on 14/01/24.
//

import Foundation

extension DateFormatter {
    
    static let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .full
        df.timeStyle = .full
        df.timeZone = TimeZone(abbreviation: "IST")
        return df
    }()
}

extension Date {
    
    public func getShortDate() -> String {
        DateFormatter.dateFormatter.dateStyle = .short
        DateFormatter.dateFormatter.timeStyle = .short
        return DateFormatter.dateFormatter.string(from: self)
    }
    
    public func getCustomDate(with format: String) -> String {
        DateFormatter.dateFormatter.dateFormat = format
        return DateFormatter.dateFormatter.string(from: self)
    }
}
