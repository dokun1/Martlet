//
//  FileHelper.swift
//
//
//  Created by David Okun on 6/6/19.
//

import Foundation

public struct Filepath {
  var name: String
  var path: String
}

public class MartletFileHelper {
  /// Allows you to create a `.css` file with a given name and given path.
  public class func createFile(_ file: Filepath) -> URL? {
    let manager = FileManager()
    manager.createFile(atPath: "\(file.path)\(file.name).css", contents: nil, attributes: nil)
    return URL(fileURLWithPath: "\(file.path)\(file.name).css")
  }
  
  /// Deletes file with given name at given path.
  public class func deleteFile(_ file: Filepath) throws {
    let manager = FileManager()
    do {
      try manager.removeItem(atPath: file.path + file.name + ".css")
    } catch let error {
      throw error
    }
  }
  
  /// Returns content from file as `String`, usually effective for testing.
  public class func getRenderedContent(from file: Filepath) throws -> String {
    let manager = FileManager()
    let fullPath = file.path + file.name + ".css"
    guard let data = manager.contents(atPath: fullPath) else {
      throw MartletFileHelperError.noFile
    }
    guard let string = String(data: data, encoding: .utf8) else {
      throw MartletFileHelperError.badData
    }
    return string
  }
}
