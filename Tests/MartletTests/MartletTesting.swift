//
//  File.swift
//  
//
//  Created by David Okun on 6/21/19.
//

import Foundation
@testable import Martlet

final class MartletTesting {
  public static func renderForTesting(with martlet: Martlet, css: CSS) throws -> String {
    do {
      try martlet.render(css)
      let rendered = try MartletFileHelper.getRenderedContent(from: Filepath(name: "testing", path: "/tmp/")).replacingOccurrences(of: "\n", with: "")
      return rendered
    } catch let error {
      throw error
    }
  }
}
