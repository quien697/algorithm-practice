//
//  main.swift
//  MiniProject1
//
//  Created by Quien on 2023/3/12.
//

import Foundation

var fileCount = 0
var directoryCount = 0
func fileSystemCrawler(_ path: String, _ soFar: String = "") {
  // base case
  guard let contents = try? FileManager.default.contentsOfDirectory(atPath: path) else {
    print("The folder doesn’t exist.")
    return
  }
  // recursion cass
  // for all possible choices
  for (index, content) in contents.enumerated() {
    let contentPath = "\(path)/\(content)"
    var isDirectory: ObjCBool = false
    let lastContent = index == contents.count - 1
    FileManager.default.fileExists(atPath: contentPath, isDirectory: &isDirectory)
    // choose one
    print("\(soFar)\(lastContent ? "└─" : "├─") \(content)")
    if isDirectory.boolValue {
      // explore
      fileSystemCrawler(contentPath, "\(soFar)\(lastContent ? " " : "│")   ")
      directoryCount += 1
    } else {
      fileCount += 1
    }
  }
}

fileSystemCrawler(FileManager.default.currentDirectoryPath)
print()
print("\(directoryCount) directories, \(fileCount) files")
