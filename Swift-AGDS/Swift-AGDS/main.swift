//
//  main.swift
//  Swift-AGDS
//
//  Created by Quien on 2023/3/10.
//

import Foundation

// MARK: - Exhaustive Search -> permutation

//var perms = Set<String>()
//permutationUnique("park", "", &perms) // &: "memory address of"
//print(perms)


// MARK: - Exhaustive Search -> combinations

//combinations("google", 3)

//let a = "google"
//print(a[3,3])

//var combs = Set<String>()
//combinations("google", 3, "", &combs) // &: "memory address of"
//print(combs)


// MARK: - Backtracking

//rollDice(2)
//rollDiceSum(2, 5)
//print(rollDiceSumCount)
//rollDiceSumBetter(2, 5)
//print(rollDiceSumBetterCount)

// MARK: - N Queens

//var board = Board(size: 8)
//solveQueens(board: &board)
//solveQueensWithBackTracking(board: &board)
//print("Possible Count = \(possibleCount)")
//print("Count = \(count)")

// MARK: - Searching

//let arr = [10, 2, 5, 4, 1, 8, 7, 9, 6, 3]
//print(linearSearch(arr, 5)!)
//print(binarySearch(arr, 4)) // error

// MARK: - Sorting

//var arr = [10, 2, 5, 4, 1, 8, 7, 9, 6, 3]
//print(bubbleSort(arr, >)) // error
//print(selectionSort(arr, >))
//print(insertionSort(arr, >))
//print(mergeSort(arr, >))
//quickSort(&arr, 0, arr.count - 1, >)
//print(arr)

// MARK: - String

let text = "ABABCABCABABABABD"
let pattern = "ABABD"
//let text = "INAHAYSTACKNEEDLEINA"
//let pattern = "NEEDLE"

//print(bruteForceSubstringSearch(text, pattern))

// MARK: - DataStructures -> Bag

//let bag = Bag<String>()
//bag.add(item: "123")
//bag.add(item: "444")
//bag.add(item: "555")
//
//print(bag)

// MARK: - DataStructures -> Stack

//let stack = Stack<String>()
//stack.push(item: "123")
//stack.push(item: "444")
//stack.push(item: "555")
//
//print(stack)
//print("peek() = \(stack.peek()!)")
//print()
//
//print("pull() = \(stack.pop()!)")
//print(stack)
//print("peek() = \(stack.peek()!)")

// MARK: - DataStructures -> Queue

//let queue = Queue<String>()
//queue.enqueue(item: "123")
//queue.enqueue(item: "444")
//queue.enqueue(item: "555")
//
//print(queue)
//print("peek() = \(queue.peek()!)")
//print()
//
//print("pull() = \(queue.dequeue()!)")
//print(queue)
//print("peek() = \(queue.peek()!)")

