//
//  Selectors.swift
//  
//
//  Created by David Okun on 6/21/19.
//

import Foundation

extension CSS {
  public func active() -> CSS {
    return CSSSelectorNode(selector: .active, child: self)
  }
  
  public func after() -> CSS {
    return CSSSelectorNode(selector: .after, child: self)
  }
  
  public func before() -> CSS {
    return CSSSelectorNode(selector: .before, child: self)
  }
  
  public func checked() -> CSS {
    return CSSSelectorNode(selector: .checked, child: self)
  }
  
  public func custom(_ value: String) -> CSS {
    return CSSSelectorNode(selector: .custom(value: value), child: self)
  }
  
  public func `default`() -> CSS {
    return CSSSelectorNode(selector: .default, child: self)
  }
  
  public func disabled() -> CSS {
    return CSSSelectorNode(selector: .disabled, child: self)
  }
  
  public func empty() -> CSS {
    return CSSSelectorNode(selector: .empty, child: self)
  }
  
  public func enabled() -> CSS {
    return CSSSelectorNode(selector: .enabled, child: self)
  }
  
  public func firstChild() -> CSS {
    return CSSSelectorNode(selector: .checked, child: self)
  }
  
  public func firstLetter() -> CSS {
    return CSSSelectorNode(selector: .firstLetter, child: self)
  }
  
  public func firstLine() -> CSS {
    return CSSSelectorNode(selector: .firstLine, child: self)
  }
  
  public func firstOfType() -> CSS {
    return CSSSelectorNode(selector: .firstOfType, child: self)
  }
  
  public func focus() -> CSS {
    return CSSSelectorNode(selector: .focus, child: self)
  }
  
  public func hover() -> CSS {
    return CSSSelectorNode(selector: .hover, child: self)
  }
  
  public func inRange() -> CSS {
    return CSSSelectorNode(selector: .inRange, child: self)
  }
  
  public func indeterminate() -> CSS {
    return CSSSelectorNode(selector: .indeterminate, child: self)
  }
  
  public func invalid() -> CSS {
    return CSSSelectorNode(selector: .invalid, child: self)
  }
  
  public func language(language: String) -> CSS {
    return CSSSelectorNode(selector: .language(lang: language), child: self)
  }
  
  public func lastChild() -> CSS {
    return CSSSelectorNode(selector: .lastChild, child: self)
  }
  
  public func lastOfType() -> CSS {
    return CSSSelectorNode(selector: .lastOfType, child: self)
  }
  
  public func link() -> CSS {
    return CSSSelectorNode(selector: .link, child: self)
  }
  
  public func not(_ element: String) -> CSS {
    return CSSSelectorNode(selector: .not(element: element), child: self)
  }
  
  public func nthChild(_ n: Int) -> CSS {
    return CSSSelectorNode(selector: .nthChild(n: n), child: self)
  }
  
  public func nthLastChild(_ n: Int) -> CSS {
    return CSSSelectorNode(selector: .nthLastChild(n: n), child: self)
  }
  
  public func nthLastOfType(_ n: Int) -> CSS {
    return CSSSelectorNode(selector: .nthLastOfType(n: n), child: self)
  }
  
  public func nthOfType(_ n: Int) -> CSS {
    return CSSSelectorNode(selector: .nthOfType(n: n), child: self)
  }
  
  public func onlyOfType() -> CSS {
    return CSSSelectorNode(selector: .onlyOfType, child: self)
  }
  
  public func onlyChild() -> CSS {
    return CSSSelectorNode(selector: .onlyChild, child: self)
  }
  
  public func optional() -> CSS {
    return CSSSelectorNode(selector: .optional, child: self)
  }
  
  public func outOfRange() -> CSS {
    return CSSSelectorNode(selector: .outOfRange, child: self)
  }
  
  public func placeholder() -> CSS {
    return CSSSelectorNode(selector: .placeholder, child: self)
  }
  
  public func readOnly() -> CSS {
    return CSSSelectorNode(selector: .readOnly, child: self)
  }
  
  public func readWrite() -> CSS {
    return CSSSelectorNode(selector: .readWrite, child: self)
  }
  
  public func required() -> CSS {
    return CSSSelectorNode(selector: .required, child: self)
  }
  
  public func root() -> CSS {
    return CSSSelectorNode(selector: .root, child: self)
  }
  
  public func selection() -> CSS {
    return CSSSelectorNode(selector: .selection, child: self)
  }
  
  public func target() -> CSS {
    return CSSSelectorNode(selector: .target, child: self)
  }
  
  public func valid() -> CSS {
    return CSSSelectorNode(selector: .valid, child: self)
  }
  
  public func visited() -> CSS {
    return CSSSelectorNode(selector: .visited, child: self)
  }
}
