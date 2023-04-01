//
//  WhosMyParent.swift
//  Swift-AGDS
//
//  Created by Quien on 2023/3/29.
//

import Foundation

func whosMyParent() {
  // use stack of node to visit next node
  func dfsWithNode(result: inout [Int:Int]) {
    let stack = Stack<(val: Int, parent: Int?)>()
    stack.push(item: (val: 1, parent: nil))
    while !stack.isEmpty() {
      if let node = stack.pop() {
        result[node.val] = node.parent
        for child in adjList[node.val] {
          if child != node.parent {
            stack.push(item: (val: child, parent: node.val))
          }
        }
      }
    }
  }
  
  // use stack in an array to visit next node
  func dfsWithArray(result: inout [Int:Int]) {
    var stack: [(node: Int, parent: Int?)] = []
    stack.append((node: 1, parent: nil))
    
    while !stack.isEmpty {
      let (node, parent) = stack.removeFirst()
      result[node] = parent
      for child in adjList[node] {
        if child != parent {
          stack.append((node: child, parent: node))
        }
      }
    }
  }
  
  // Create the adjacency list
  let n = Int(readLine()!)!
  let m = n - 1
  var adjList = [[Int]](repeating: [], count: n + 1)
  
  for _ in 0..<m {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    let u = edge[0]
    let v = edge[1]
    adjList[u].append(v) // undirected graph
    adjList[v].append(u) // undirected graph
  }
  
  var result = [Int:Int]()
  dfsWithNode(result: &result)
  // dfsWithArray(result: &result)
  
  // Print Result
  for i in 2...n {
    print(result[i]!)
  }
}
