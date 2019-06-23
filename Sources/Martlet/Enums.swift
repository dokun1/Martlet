//
//  Enums.swift
//  
//
//  Created by David Okun on 6/19/19.
//

import Foundation

public enum Alignment: String {
  case left = "left"
  case right = "right"
  case center = "center"
  case justified = "justified"
}

public enum HeadingWeight: String, Renderable {
  case h1 = "h1"
  case h2 = "h2"
  case h3 = "h3"
  case h4 = "h4"
  case h5 = "h5"
  case h6 = "h6"
  
  public func render() -> String {
    return self.rawValue
  }
}

public enum Selector: Renderable {
  case active
  case after
  case before
  case checked
  case custom(value: String)
  case `default`
  case disabled
  case empty
  case enabled
  case firstChild
  case firstLetter
  case firstLine
  case firstOfType
  case focus
  case hover
  case inRange
  case indeterminate
  case invalid
  case language(lang: String)
  case lastChild
  case lastOfType
  case link
  case not(element: String)
  case nthChild(n: Int)
  case nthLastChild(n: Int)
  case nthLastOfType(n: Int)
  case nthOfType(n: Int)
  case onlyOfType
  case onlyChild
  case optional
  case outOfRange
  case placeholder
  case readOnly
  case readWrite
  case required
  case root
  case selection
  case target
  case valid
  case visited
  
  public func render() -> String {
    switch self {
    case .active:
      return ":active"
    case .after:
      return "::after"
    case .before:
      return "::before"
    case .checked:
      return ":checked"
    case .default:
      return ":default"
    case .disabled:
      return ":disabled"
    case .empty:
      return ":empty"
    case .enabled:
      return ":enabled"
    case .firstChild:
      return ":first-child"
    case .firstLetter:
      return "::first-letter"
    case .firstLine:
      return "::first-line"
    case .firstOfType:
      return ":first-of-type"
    case .focus:
      return ":focus"
    case .hover:
      return ":hover"
    case .inRange:
      return ":in-range"
    case .indeterminate:
      return ":indeterminate"
    case .invalid:
      return ":invalid"
    case .language(let lang):
      return ":lang(\(lang))"
    case .lastChild:
      return ":last-child"
    case .lastOfType:
      return ":last-of-type"
    case .link:
      return ":link"
    case .not(let element):
      return ":not(\(element))"
    case .nthChild(let n):
      return ":nth-child\(n))"
    case .nthLastChild(let n):
      return ":nth-last-child\(n))"
    case .nthLastOfType(let n):
      return ":nth-last-of-type\(n))"
    case .nthOfType(let n):
      return ":nth-of-type\(n))"
    case .onlyOfType:
      return ":only-of-type"
    case .onlyChild:
      return ":only-child"
    case .optional:
      return ":optional"
    case .outOfRange:
      return ":out-of-range"
    case .placeholder:
      return "::placeholder"
    case .readOnly:
      return ":read-only"
    case .readWrite:
      return ":read-write"
    case .required:
      return ":required"
    case .root:
      return ":root"
    case .selection:
      return "::selection"
    case .target:
      return ":target"
    case .valid:
      return ":valid"
    case .visited:
      return ":visited"
    case .custom(let value):
      return "\(value)"
    }
  }
}
