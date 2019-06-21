//
//  CSSNode.swift
//
//
//  Created by David Okun on 6/6/19.
//

import Foundation

/*struct AttributedNode: HTML {
 let attribute: Attribute
 let child: HTML
 
 func getTag() -> String? {
 return child.getTag()
 }
 
 func renderAsHTML(into stream: HTMLOutputStream, attributes: [Attribute]) {
 var fullAttrs = attributes
 fullAttrs.append(attribute)
 child.renderAsHTML(into: stream, attributes: fullAttrs)
 }
 }
 */

struct CSSSelectorNode: CSS {
  let selector: Selector
  let child: CSS
  
  func renderAsCSS(into stream: CSSOutputStream, selectors: [Selector]) {
    child.renderAsCSS(into: stream, selectors: [selector])
  }
}

struct CSSElementNode: CSS {
  var element: String
  var child: CSS?
  
  func renderAsCSS(into stream: CSSOutputStream, selectors: [Selector]) {
    stream.write("")
    stream.write(element)
    if selectors.count > 0 {
      for selector in selectors {
        stream.write(selector.operator.rawValue)
      }
    }
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
      child.renderAsCSS(into: stream, selectors: [])
    }
    stream.write("}")
    stream.writeNewline()
  }
}

struct CSSDeclarationNode: CSS {
  var declaration: Declaration
  
  func renderAsCSS(into stream: CSSOutputStream, selectors: [Selector]) {
    stream.writeIndent()
    stream.write(declaration)
    stream.write(";")
    stream.writeNewline()
  }
}

struct CSSMultiNode: CSS {
  let children: [CSS]
  func renderAsCSS(into stream: CSSOutputStream, selectors: [Selector]) {
    for child in children {
      child.renderAsCSS(into: stream, selectors: selectors)
    }
  }
}

public struct Selector {
  let `operator`: Operator
}

public struct Declaration {
  let property: String
  let value: String
}
