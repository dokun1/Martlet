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

public func `selector`(_ name: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSSelectorNode(selector: name, child: child())
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
