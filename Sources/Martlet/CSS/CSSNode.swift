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
    /// Write the initial element to be described
    stream.write(element)
    
    /// Append any selector operators to the element
    for selector in selectors {
      stream.write(selector.render())
    }
    
    /// Open the bracket and start describing the elements
    stream.write(" {")
    stream.writeNewline()
    stream.writeIndent()
    
    /// If the selector has no declared children (should be rare), close the bracket
    guard let child = child else {
      stream.write("}")
      stream.writeNewline()
      return
    }
    
    /// Otherwise, render all children associated with this element
    stream.withIndent {
      child.renderAsCSS(into: stream, selectors: [])
    }
    
    /// Close the bracket and write a newline to handle the next element
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

public struct Declaration {
  let property: String
  let value: String
}
