//
//  File.swift
//  
//
//  Created by akash kahalkar on 12/01/24.
//

import Foundation

public final class NetworkUtil {
    
    public static let shared = NetworkUtil()
    private init() {}
    
    public func invoke() {
        print("Network util invoked")
    }
}
