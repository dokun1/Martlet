//
//  CSSBuilder.swift
//  
//
//  Created by David Okun on 6/19/19.
//

import Foundation

@_functionBuilder
public struct CSSBuilder {
  public static func buildBlock() -> CSS {
    return CSSMultiNode(children: [])
  }
  
  public static func buildBlock(_ content: CSS) -> CSS {
    return content
  }
  
  public static func buildBlock(_ content: CSS...) -> CSS {
    return CSSMultiNode(children: content)
  }
  
  public static func buildIf(_ content: CSS?) -> CSS {
    if let content = content { return content }
    return CSSMultiNode(children: [])
  }
  
  public static func buildEither(first: CSS) -> CSS {
    return first
  }
  
  public static func buildEither(second: CSS) -> CSS {
    return second
  }
}
