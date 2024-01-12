
import Foundation
import CommonCrypto

extension String {
    public var isNotEmpty: Bool {
        return !isEmpty
    }
    
    public enum HashType {
        case sha256, md5
    }
    
    public func getHash(type: HashType) -> String {
        
        let messageData = self.data(using:.utf8)!
        var digestData = getDigest(for: type, with: messageData)
        
        _ = digestData.withUnsafeMutableBytes { digestBytes in
            messageData.withUnsafeBytes { messageBytes in
                hashData(into: type,
                         messageBytes,
                         CC_LONG(messageData.count),
                         digestBytes)
            }
        }
        
        return digestData.map { String(format: "%02hhx", $0) }.joined()
    }
    
    private func getDigest(for type: HashType, with data: Data) -> Data {
        switch type {
            
        case .sha256:
            return Data(count: Int(CC_SHA256_DIGEST_LENGTH))
            
        case .md5:
            return Data(count: Int(CC_MD5_DIGEST_LENGTH))
        }
    }
    
    private func hashData(
        into type: HashType,
        _ data: UnsafeRawPointer!,
        _ len: CC_LONG,
        _ md: UnsafeMutablePointer<UInt8>!) -> UnsafeMutablePointer<UInt8>! {
        
        switch type {
            
        case .sha256:
            return CC_SHA256(data, len, md)
        case .md5:
            return CC_MD5(data, len, md)
        }
    }
}
