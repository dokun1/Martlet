import XCTest
@testable import Martlet

final class MartletTests: XCTestCase {
  func testHeading() {
    func simplePage() -> CSS {
      heading(.h1) {
        textAlign(.left)
        fontSize(16)
      }
    }
    let correctCSS = """
      h1 {
        text-align: left;
        font-size: 16;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTests.renderForTesting(with: martlet, css: simplePage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testCustomSelector() {
    func customPage() -> CSS {
      selector("h3") {
        textAlign(.center)
        fontSize(8)
      }
    }
    let correctCSS = """
      h3 {
        text-align: center;
        font-size: 8;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTests.renderForTesting(with: martlet, css: customPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  public static func renderForTesting(with martlet: Martlet, css: CSS) throws -> String {
    do {
      try martlet.render(css)
      let rendered = try MartletFileHelper.getRenderedContent(from: Filepath(name: "testing", path: "/tmp/")).replacingOccurrences(of: "\n", with: "")
      return rendered
    } catch let error {
      throw error
    }
  }

  static var allTests = [
    ("testHeading", testHeading),
    ("testCustomSelector", testCustomSelector)
  ]
}
