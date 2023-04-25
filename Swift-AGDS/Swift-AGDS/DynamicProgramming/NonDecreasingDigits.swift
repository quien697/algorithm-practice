//
//  NonDecreasingDigits.swift
//  Swift-AGDS
//
//  Created by Quien on 2023/4/22.
//

import Foundation

/**
 * Non-decreasing Digits
 *
 * A Number with digits in non-decreasing order: 2234, 3678, 11119
 *
 * These numbers are not in non-decreasing order: 2232, 3676, 91111
 *
 * Given a length of digits N, write a program to print the total number of non-decreasing digits. (A number can start with 0)
 *
 - Parameter n: the number of digits (length)  (`1 <= N <= 1000`)
 - Returns: the number of non-decreasing digits.
 */
func nonDecreasingDigits(_ n: Int) -> Int {
  // Using Bottom-up Approach -> Tabulation + Memorization.
  // recurrence
  // d[N][L] = the total number of pretty numbers with N digits and ends with L
  // d[n] = d[i - 1][j] + d[i][j - 1]
  
  var d = [[Int]](repeating: [Int](repeating: 0, count: 10), count: n + 1)
  for i in 0...9 {
    d[1][i] = 1
  }
  print()
  if n > 1 {
    for i in 2...n {
      for j in 0...9 {
        if j == 0 {
          d[i][j] = 1
        } else {
          d[i][j] = d[i][j - 1] + d[i - 1][j]
        }
      }
    }
  }
  
  var result = 0
  for i in 0...9 {
    result += d[n][i]
  }
  return result
}
