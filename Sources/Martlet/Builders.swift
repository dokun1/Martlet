//
//  Builders.swift
//  
//
//  Created by David Okun on 6/19/19.
//

import Foundation

public func heading(_ weight: HeadingWeight, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSSelectorNode(selector: weight.rawValue, child: child())
}

public func paragraph(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSSelectorNode(selector: "p", child: child())
}

public func `selector`(element: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSSelectorNode(selector: element, child: child())
}

public func `selector`(elements: [String], @CSSBuilder child: () -> CSS) -> CSS {
  var buffer = String()
  for element in elements {
    buffer.append(element)
    buffer.append(", ")
  }
  return CSSSelectorNode(selector: String(buffer.dropLast(2)), child: child())
}

public func `selector`(`class`: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSSelectorNode(selector: ".\(`class`)", child: child())
}

public func `selector`(id: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSSelectorNode(selector: "#\(id)", child: child())
}

public func fontSize(_ size: Int) -> CSS {
  return CSSDeclarationNode(declaration: Declaration(property: "font-size", value: String(size)))
}

public func color(_ color: String) -> CSS {
  return CSSDeclarationNode(declaration: Declaration(property: "color", value: color))
}

public func textAlign(_ alignment: Alignment) -> CSS {
  return CSSDeclarationNode(declaration: Declaration(property: "text-align", value: alignment.rawValue))
}
