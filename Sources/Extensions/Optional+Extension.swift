//
//  File.swift
//  
//
//  Created by akash kahalkar on 16/01/24.
//

import Foundation

extension Optional where Wrapped: ExpressibleByBooleanLiteral {
    public var falseIfNil: Wrapped {
        return self ?? false
    }

    public var trueIfNil: Wrapped {
        return self ?? true
    }
}

extension Optional where Wrapped: ExpressibleByIntegerLiteral {
    public var zeroIfNil: Wrapped {
        return self ?? 0
    }
}

extension Optional where Wrapped: ExpressibleByStringLiteral {
    public var emptyIfNil: Wrapped {
        return self ?? ""
    }
}

extension Optional where Wrapped: ExpressibleByArrayLiteral {
    public var emptyIfNil: Wrapped {
        return self ?? []
    }
}

extension Optional where Wrapped: ExpressibleByDictionaryLiteral {
    public var emptyIfNil: Wrapped {
        return self ?? [:]
    }
}
