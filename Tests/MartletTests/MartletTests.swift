import XCTest
@testable import Martlet

final class MartletTests: XCTestCase {
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
      let rendered = try MartletTests.renderForTesting(with: martlet, css: simplePage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testAfterSelector() {
    @CSSBuilder
    func page() -> CSS {
      heading(.h1) {
        textAlign(.center)
      }.after()
    }
    let correctCSS = """
      h1::after {
        text-align: center;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTests.renderForTesting(with: martlet, css: page())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testBeforeSelector() {
    @CSSBuilder
    func page() -> CSS {
      heading(.h3) {
        textAlign(.right)
      }.before()
    }
    let correctCSS = """
      h3::before {
        text-align: right;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTests.renderForTesting(with: martlet, css: page())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testCustomElement() {
    func customPage() -> CSS {
      selector(element: "h3") {
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
      let rendered = try MartletTests.renderForTesting(with: martlet, css: multipleSelectorPage())
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
      let rendered = try MartletTests.renderForTesting(with: martlet, css: multipleElementPage())
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
      let rendered = try MartletTests.renderForTesting(with: martlet, css: multipleElementPage())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testMultipleElements() {
    let elements = ["h1", "p"]
    
    @CSSBuilder
    func multipleElementPage() -> CSS {
      selector(elements: elements) {
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
      let rendered = try MartletTests.renderForTesting(with: martlet, css: multipleElementPage())
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
    ("testCustomElement", testCustomElement),
    ("testMultipleStyles", testMultipleStyles),
    ("testClassElement", testClassElement),
    ("testIdElement", testIdElement),
    ("testMultipleElements", testMultipleElements),
    ("testAfterSelector", testAfterSelector),
    ("testBeforeSelector", testBeforeSelector)
  ]
}
