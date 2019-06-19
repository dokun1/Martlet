//
//  CSSExtensions.swift
//  
//
//  Created by David Okun on 6/19/19.
//

import Foundation

extension Optional: CSS where Wrapped: CSS {
  public func renderAsCSS(into stream: CSSOutputStream) {
    if let css = self {
      css.renderAsCSS(into: stream)
    }
  }
}
