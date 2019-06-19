//
//  CSSNode.swift
//
//
//  Created by David Okun on 6/6/19.
//

import Foundation

struct CSSSelectorNode: CSS {
  var selector: String
  var child: CSS?
  
  func renderAsCSS(into stream: CSSOutputStream) {
    stream.write("")
    stream.write(selector)
    stream.write(" {")
    stream.writeNewline()
    stream.writeIndent()
    
    /// if the selector has declared children, write them
    guard let child = child else {
      stream.write("}")
      stream.writeNewline()
      return
    }
    
    stream.withIndent {
      child.renderAsCSS(into: stream)
    }
    stream.write("}")
    stream.writeNewline()
  }
}

struct CSSDeclarationNode: CSS {
  var declaration: Declaration
  
  func renderAsCSS(into stream: CSSOutputStream) {
    stream.writeIndent()
    stream.write(declaration)
    stream.write(";")
    stream.writeNewline()
  }
}

struct CSSMultiNode: CSS {
  let children: [CSS]
  func renderAsCSS(into stream: CSSOutputStream) {
    for child in children {
      child.renderAsCSS(into: stream)
    }
  }
}

public struct Declaration {
  let property: String
  let value: String?
}
