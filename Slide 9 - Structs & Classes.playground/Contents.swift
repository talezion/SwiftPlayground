/*
README: SLIDE 9 - STRUCTURES AND CLASSES
This slide contrasts structures (value types) and classes (reference types).
Additional Use Cases:
• Showing value type behavior with structs.
• Demonstrating reference type behavior with classes.
• Highlighting mutability differences.
*/

/// Structure example: Value type
struct Block {
    var hash: String
    var previousHash: String
}
var blockA = Block(hash: "hash1", previousHash: "hash0")
var blockB = blockA
blockB.hash = "hash2"
print("Block A hash: \(blockA.hash), Block B hash: \(blockB.hash)")

/// Class example: Reference type
class Blockchain {
    var chain: [Block] = []
}
let blockchain1 = Blockchain()
blockchain1.chain.append(blockA)
let blockchain2 = blockchain1
blockchain2.chain.append(blockB)
print("Blockchain1 chain count: \(blockchain1.chain.count)")
print("Blockchain2 chain count: \(blockchain2.chain.count)")
