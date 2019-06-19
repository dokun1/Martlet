import Foundation

public class Martlet {
  public enum MartletOutput {
    case stdout
    case file(filepath: Filepath)
  }
  
  public init() { }
  
  public var outputLocation: MartletOutput = .stdout
  
  /// Handles retrieving correct `CSSOutputStream` for where rendered document will go
  private func getStream(for content: CSS) throws -> CSSOutputStream {
    switch outputLocation {
    case .stdout:
      return CSSOutputStream(FileHandle.standardOutput)
    case .file(let filepath):
      do {
        guard let url = MartletFileHelper.createFile(filepath) else {
          throw MartletFileHelperError.noFile
        }
        let handler = try FileHandle(forWritingTo: url)
        return CSSOutputStream(handler)
      } catch let error {
        throw error
      }
    }
  }
  
  public func render(_ content: CSS) throws {
    do {
      let stream = try getStream(for: content)
      content.renderAsCSS(into: stream)
    } catch let error {
      throw error
    }
  }
}
