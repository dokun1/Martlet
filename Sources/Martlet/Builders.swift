//
//  Builders.swift
//  
//
//  Created by David Okun on 6/19/19.
//

import Foundation

public func heading(_ weight: HeadingWeight, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: weight.rawValue, child: child())
}

public func paragraph(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "p", child: child())
}

public func selector(element: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: element, child: child())
}

public func selector(elements: [String], @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: elements.joined(separator: ", "), child: child())
}

public func selector(`class`: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: ".\(`class`)", child: child())
}

public func selector(id: String, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "#\(id)", child: child())
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

extension CSS {
  public func after() -> CSS {
    return CSSSelectorNode(selector: Selector(operator: .after), child: self)
  }
  
  public func before() -> CSS {
    return CSSSelectorNode(selector: Selector(operator: .before), child: self)
  }
}
