//
//  File.swift
//  
//
//  Created by David Okun on 6/21/19.
//

import Foundation

public enum Element: String, Renderable {
  case paragraph = "p"
  case div = "div"
  
  public func render() -> String {
    return self.rawValue
  }
}
