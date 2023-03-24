//
//  RepeatingSequence.swift
//  Swift-AGDS
//
//  Created by Quien on 2023/3/24.
//

import Foundation

func repeatingSequence() {
  
  func next(A: Int, P: Int) -> Int {
    return String(A)
      .compactMap { power(base: Int(String($0))!, exponent: P) }
      .reduce(0, +)
  }
  
  func Length(A: Int, P: Int, seq: Int, check: inout [Int]) -> Int {
    if check[A] != 0 {
      return check[A] - 1
    }
    check[A] = seq
    let nx = next(A: A, P: P)
    return Length(A: nx, P: P, seq: seq + 1, check: &check)
  }
  
  var check = [Int](repeating: 0, count: 1_000_000)
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  let A = input[0]
  let P = input[1]
  print(Length(A: A, P: P, seq: 1, check: &check))
}
