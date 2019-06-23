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

public func custom<R: Renderable>(element: R, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: element.render(), child: child())
}

public func custom<R: Renderable>(elements: [R], @CSSBuilder child: () -> CSS) -> CSS {
  var rendered = [String]()
  for element in elements {
    rendered.append(element.render())
  }
  return CSSElementNode(element: rendered.joined(separator: ", "), child: child())
}

public func selector<R: Renderable>(`class`: R, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: ".\(`class`.render())", child: child())
}

public func selector<R: Renderable>(id: R, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "#\(id.render())", child: child())
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
