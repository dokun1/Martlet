import XCTest
@testable import Martlet

final class MartletSelectorTests: XCTestCase {
  func testActiveSelector() {
    @CSSBuilder
    func page() -> CSS {
      heading(.h1) {
        textAlign(.center)
        }.active()
    }
    let correctCSS = """
      h1:active {
        text-align: center;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: page())
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
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: page())
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
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: page())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testFocusSelector() {
    @CSSBuilder
    func page() -> CSS {
      heading(.h4) {
        textAlign(.left)
      }.focus()
    }
    let correctCSS = """
      h4:focus {
        text-align: left;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: page())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testLanguageSelector() {
    @CSSBuilder
    func page() -> CSS {
      custom(element: Element.div) {
        textAlign(.justified)
      }.language(language: "it")
    }
    let correctCSS = """
      div:lang(it) {
        text-align: justified;
      }
      """.replacingOccurrences(of: "\n", with: "")
    let martlet = Martlet()
    martlet.outputLocation = .file(filepath: Filepath(name: "testing", path: "/tmp/"))
    do {
      let rendered = try MartletTesting.renderForTesting(with: martlet, css: page())
      XCTAssertEqual(rendered, correctCSS)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  static var allTests = [
    ("testActiveSelector", testActiveSelector),
    ("testAfterSelector", testAfterSelector),
    ("testBeforeSelector", testBeforeSelector),
    ("testFocusSelector", testFocusSelector),
    ("testLanguageSelector", testLanguageSelector)
  ]
}
