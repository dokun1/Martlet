//
//  Errors.swift
//
//
//  Created by David Okun on 6/7/19.
//

import Foundation

enum MartletFileHelperError: Error {
  case noFile
  case badData
}

extension MartletFileHelperError: LocalizedError {
  public var errorDescription: String? {
    switch self {
    case .noFile:
      return "Martlet could not find a file at the path you specified."
    case .badData:
      return "Martlet was not able to use the data written to the file you specified."
    }
  }
}

enum MartletError: Error {
  
}
