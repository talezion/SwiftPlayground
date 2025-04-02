/*
README: SLIDE 25A - PROTOCOL GENERICS WITH ASSOCIATED TYPES
This slide extends generics with protocols that have associated types.
Additional Use Cases:
• Defining a protocol with an associated type.
• Implementing a conforming type that infers the associated type.
*/

protocol Container {
    associatedtype Item
    var items: [Item] { get set }
    mutating func add(item: Item)
}

struct GenericCryptoWallet: Container {
    var items: [String] = []  // 'Item' is inferred as String
    mutating func add(item: String) {
        items.append(item)
    }
}

var wallet = GenericCryptoWallet()
wallet.add(item: "Bitcoin")
wallet.add(item: "Ethereum")
print("Wallet contains: \(wallet.items)")
