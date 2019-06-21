//
//  CSSOutputStream.swift
//
//
//  Created by David Okun on 6/18/19.
//

import Foundation

// MARK: - CSSOutputStream
/// A helper class for rendering formatted CSS to a given `TextOutputStream`.
public class CSSOutputStream {
  public internal(set) var output: TextOutputStream
  
  /// Create an `CSSOutputStream` that will render `CSS` nodes as CSS text.
  public init(_ output: TextOutputStream) {
    self.output = output
  }
  
  var indentation: Int = 0
  
  func withIndent(_ f: () -> Void) {
    indentation += 2
    f()
    indentation -= 2
  }
  
  func writeIndent() {
    write(String(repeating: " ", count: indentation))
  }
  
  func line<Str: StringProtocol>(_ line: Str) {
    writeIndent()
    write(line)
    writeNewline()
  }
  
  func write<Str: StringProtocol>(_ text: Str) {
    output.write(String(text))
  }
  
  func writeDoubleQuoted(_ string: String) {
    write("\"")
    write(string)
    write("\"")
  }
  
  func writeNewline() {
    write("\n")
  }
  
  func writeCarriageReturn() {
    write("\r")
  }
  
  func write(_ declaration: Declaration) {
    write(declaration.property)
    write(": ")
    write(declaration.value)
  }
  
  func writeEscaped<Str: StringProtocol>(_ string: Str) {
    for c in string {
      switch c {
      case "\"": write("&quot;")
      case "&": write("&amp;")
      case "<": write("&lt;")
      case ">": write("&gt;")
      default: write(String(c))
      }
    }
  }
  
  /// Renders the provided `CSS` node as CSS text to the receiver's stream.
  public func render(_ content: CSS) {
    content.renderAsCSS(into: self, selectors: [])
  }
}

extension FileHandle: TextOutputStream {
  public func write(_ string: String) {
    write(Data(string.utf8))
  }
}
