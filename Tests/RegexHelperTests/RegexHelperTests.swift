import XCTest
@testable import RegexHelper

final class RegexHelperTests: XCTestCase {
    func testExtractTwoGroupsOfNumbers() {
        let helper = RegexHelper(pattern: #"\[(\d+)\]\D+(\d+)"#)
        let testString = "mem[56248] = 21501"
        let testResult = helper.parse(testString)
        XCTAssertEqual(testResult.first, "56248")
        XCTAssertEqual(testResult.last, "21501")
    }
    
    func testRangeAndLetters() {
        let helper = RegexHelper(pattern: #"(\d+)-(\d+) (\w): (\w+)"#)
        let testString = "1-13 g: gggfgggggggggggggz"
        let testResult = helper.parse(testString)
        XCTAssertEqual(testResult[0], "1")
        XCTAssertEqual(testResult[1], "13")
        XCTAssertEqual(testResult[2], "g")
        XCTAssertEqual(testResult[3], "gggfgggggggggggggz")
    }

    static var allTests = [
        ("testExtractTwoGroupsOfNumbers", testExtractTwoGroupsOfNumbers),
        ("testRangeAndLetters", testRangeAndLetters),
    ]
}
