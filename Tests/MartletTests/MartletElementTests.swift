import XCTest
@testable import Martlet

final class MartletElementTests: XCTestCase {
  func testHeading() {
    func simplePage() -> CSS {
      heading(.h1) {
        textAlign(.left)
        fontSize(16)
        color("red")
      }
    }
    let correctCSS = """
      h1 {
        text-align: left;
        font-size: 16;
        color: red;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: simplePage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testCustomElement() {
    @CSSBuilder
    func customPage() -> CSS {
      custom(element: HeadingWeight.h3) {
        textAlign(.center)
        fontSize(8)
      }
      custom(element: Element.div) {
        color("red")
      }
    }
    let correctCSS = """
      h3 {
        text-align: center;
        font-size: 8;
      }
      div {
        color: red;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: customPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testMultipleStyles() {
    @CSSBuilder
    func multipleSelectorPage() -> CSS {
      heading(.h1) {
        textAlign(.center)
        fontSize(16)
      }
      paragraph {
        textAlign(.left)
        fontSize(12)
      }
    }
    let correctCSS = """
      h1 {
        text-align: center;
        font-size: 16;
      }
      p {
        text-align: left;
        font-size: 12;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: multipleSelectorPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testClassElement() {
    @CSSBuilder
    func multipleElementPage() -> CSS {
      selector(class: "flexbox-container") {
        fontSize(12)
      }
    }
    let correctCSS = """
      .flexbox-container {
        font-size: 12;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: multipleElementPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testIdElement() {
    @CSSBuilder
    func multipleElementPage() -> CSS {
      selector(id: "flexbox-container") {
        fontSize(12)
      }
    }
    let correctCSS = """
      #flexbox-container {
        font-size: 12;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: multipleElementPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testMultipleElements() {
    let elements = ["h1", "p"]
    
    @CSSBuilder
    func multipleElementPage() -> CSS {
      custom(elements: elements) {
        fontSize(12)
      }
    }
    let correctCSS = """
      h1, p {
        font-size: 12;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: multipleElementPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testAllElements() {
    let elements = ["*"]
    
    @CSSBuilder
    func multipleElementPage() -> CSS {
      custom(elements: elements) {
        fontSize(12)
      }
    }
    let correctCSS = """
      * {
        font-size: 12;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: multipleElementPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }

  static var allTests = [
    ("testHeading", testHeading),
    ("testCustomElement", testCustomElement),
    ("testMultipleStyles", testMultipleStyles),
    ("testClassElement", testClassElement),
    ("testIdElement", testIdElement),
    ("testMultipleElements", testMultipleElements)
  ]
}
