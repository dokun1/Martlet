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

public enum HeadingWeight: String {
  case h1 = "h1"
  case h2 = "h2"
  case h3 = "h3"
  case h4 = "h4"
  case h5 = "h5"
  case h6 = "h6"
}

public enum Operator: String {
  case after = "::after"
  case before = "::before"
  case focus = ":focus"
}
