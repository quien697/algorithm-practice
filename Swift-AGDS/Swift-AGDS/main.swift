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

//let text = "ABABCABCABABABABD"
//let pattern = "ABABD"
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


// MARK: - Graph

// Example Input1
// n, m (# of vertices, # of edges)
// m edges
//6 8
//1 2
//1 5
//2 3
//2 4
//2 5
//5 4
//4 3
//4 6
// Example Input2
// n, m (# of vertices, # of edges)
// m edges (i j w) w: weight
//6 8
//1 2 2
//1 5 7
//2 3 2
//2 4 3
//2 5 1
//5 4 7
//4 3 1
//4 6 7

//adjacencyMatrixRepresentation()
//adjacencyListRepresentation()
//adjacencyListWeightedRepresentation()
//adjacencyListDFS()
//adjacencyListBFS()

// MARK: - Graph -> Examples -> Connected Components

// Example Input1
//6 5
//1 2
//2 5
//5 1
//3 4
//4 6
// Example Input2
//6 8
//1 2
//2 5
//5 1
//3 4
//4 6
//5 4
//2 4
//2 3

//connectedComponents()

// MARK: - Graph -> Examples -> Bipartite

// Example Input
//2
//3 2
//1 3
//2 3
//4 4
//1 2
//2 3
//3 4
//4 2

//isBipartiteWithDFS()
//isBipartiteWithBFS()

// MARK: - Graph -> Examples -> Cyclic Permutation

// Example Input
//2
//8
//3 2 7 8 1 4 5 6
//10
//2 1 3 4 5 6 7 9 10 8

//cyclicPermutation()

// MARK: - Graph -> Examples -> Repeating Sequence

// Example Input
// 57 2

//repeatingSequence()

// MARK: - Graph -> Examples -> WhosMyParent

// Example Input1
//7
//1 6
//6 3
//3 5
//4 1
//2 4
//4 7
// Example Input2
//12
//1 2
//1 3
//2 4
//3 5
//3 6
//4 7
//4 8
//5 9
//5 10
//6 11
//6 12

//whosMyParent()

// MARK: - Graph -> Examples -> Diameter

// Example Input1
//5
//1 3 2 -1
//2 4 4 -1
//3 1 2 4 3 -1
//4 2 4 3 3 5 6 -1
//5 4 6 -1
// Example Input2
//8
//1 3 2 -1
//2 4 4 -1
//3 1 2 4 3 6 2 -1
//4 2 4 3 3 5 6 -1
//5 4 6 -1
//6 3 2 7 4 -1
//7 6 4 8 5 -1
//8 7 5 -1

//diameter()
