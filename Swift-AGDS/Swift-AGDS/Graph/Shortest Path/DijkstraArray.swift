//
//  DijkstraArray.swift
//  Swift-AGDS
//
//  Created by Quien on 2023/4/18.
//

import Foundation

/// "Edge Relaxation"
/// dist[]: an array of elements representing distance(cost, weight)
/// For each edge (u, v)
///   if dist[v] > dist[u] + w(u, v)
///     dist[v] = dist[u] + w(u, v)

/// Dijkstra's Algorithm (Shortest Path)
/// - Greedy algorithm
func dijkstraArray() {
  /// All vertices starting from 1 to n
  func dijkstra(_ edges: [(u: Int, v: Int, w: Int)], _ src: Int) -> [Int] {
    let n = edges.count
    var adjList = [[(v: Int,w : Int)]](repeating: [(Int, Int)](), count: n)
    for edge in edges {
      adjList[edge.u].append((v: edge.v, w: edge.w))
    }
    
    var check = [Bool](repeating: false, count: n + 1)
    var dist = [Int](repeating: Int.max, count: n + 1)
    
    // starting node src
    dist[src] = 0
    
    for _ in 0..<n-1 {
      var minWeight = Int.max
      var minVertex = 1
      for v in 1...n {
        if !check[v] && dist[v] < minWeight {
          minWeight = dist[v]
          minVertex = v
        }
      }
      check[minVertex] = true
      for edge in adjList[minVertex] {
        if dist[edge.v] > dist[minVertex] + edge.w {
          dist[edge.v] = dist[minVertex] + edge.w
        }
      }
    }
    
    return dist
  }
  
  /// * query shortest path
  ///
  /// let shortestPath = dijkstra(...)
  /// print(shortestPath[2]) // shortest path from src to vertex 2
}
