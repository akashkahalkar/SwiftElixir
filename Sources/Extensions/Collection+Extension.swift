
import Foundation

extension Collection {
    // safe index to prevent out of bounds exception
    public subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
