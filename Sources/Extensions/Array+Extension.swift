//
//  Extensions.swift
//
//
//  Created by akash kahalkar on 12/01/24.
//

import Foundation

extension Collection {
    public var isNotEmpty: Bool {
        return !isEmpty
    }
    
    // safe index to prevent out of bounds exception
    public subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
