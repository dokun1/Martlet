import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(MartletElementTests.allTests),
    testCase(MartletSelectorTests.allTests)
  ]
}
#endif

