//
//  CSS.swift
//
//
//  Created by David Okun on 6/18/19.
//

import Foundation

// MARK: - CSS Protocol and base implementations
/// An object that is capable of rendering itself and its children as CSS, with
/// the provided list of attributes.
public protocol CSS {
  /// Renders the contents of this object as CSS to the provided output stream
  /// as formatted CSS text.
  /// - Parameters:
  ///   - stream: The stream to print the resulting CSS to.
  func renderAsCSS(into stream: CSSOutputStream)
}
