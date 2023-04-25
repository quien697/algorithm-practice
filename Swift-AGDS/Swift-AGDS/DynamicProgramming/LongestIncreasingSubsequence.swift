//
//  LongestIncreasingSubsequence.swift
//  Swift-AGDS
//
//  Created by Quien on 2023/4/22.
//

import Foundation

/**
 * LeetCode : 300. Longest Increasing Subsequence
 *
 * https://leetcode.com/problems/longest-increasing-subsequence/
 *
 * Given an integer array nums, return the length of the longest strictly increasing subsequence.
 
 - Parameter nums: `1 <= nums.length <= 2500`, `-10 power of 4 <= nums[i] <= 10 power of 4`
 - Returns: the length of the longest increasing subsequence
 */
func lengthOfLIS(_ nums: [Int]) -> Int {
  // Using Bottom-up Approach -> Tabulation + Memorization.
  // recurrence
  // d[n] = min(d[i], d[i - j * j] + 1) where j * j <= i
  
  let n = nums.count
  var d = [Int](repeating: 1, count: n)
  
  var maxCount = 1
  for i in 1..<n {
    var j = 0
    while i > j {
      if nums[i] > nums[j] && d[j] >= d[i] {
        d[i] = d[j] + 1
        if maxCount < d[i] {
          maxCount = d[i]
        }
      }
      j += 1
    }
  }
  print(d)
  return maxCount
}
