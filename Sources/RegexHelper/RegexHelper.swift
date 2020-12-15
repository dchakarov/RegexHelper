import Foundation

struct RegexHelper {
    let pattern: String
    
    func parse(_ inputString: String) -> [String] {
        var result = [String]()
        let regex = try! NSRegularExpression(pattern: pattern, options: [])
        let nsrange = NSRange(inputString.startIndex..<inputString.endIndex, in: inputString)
        regex.enumerateMatches(in: inputString,
                               options: [],
                               range: nsrange) { (match, _, stop) in
            guard let match = match else { return }
            if match.numberOfRanges > 1 {
                for i in 1..<match.numberOfRanges {
                    if let captureRange = Range(match.range(at: i), in: inputString) {
                        let str = String(inputString[captureRange])
                        result.append(str)
                    }
                }
                stop.pointee = true
            }
        }
        
        return result
    }
}
