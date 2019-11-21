import XCTest

import injectSPMTests

var tests = [XCTestCaseEntry]()
tests += injectSPMTests.allTests()
XCTMain(tests)
