/*
README: SLIDE 24 - PROTOCOLS & PROTOCOL EXTENSIONS
This slide demonstrates protocols and protocol extensions with default implementations.
Additional Use Cases:
• Defining a protocol and providing a default implementation.
• Multiple types conforming to the protocol and overriding the default behavior.
*/

protocol TransactionProtocol {
    func process() -> String
}

extension TransactionProtocol {
    func process() -> String {
        return "Processing transaction..."
    }
}

struct CryptoTransaction: TransactionProtocol {
    var amount: Double
}

struct BankTransaction: TransactionProtocol {
    var amount: Double
    func process() -> String {
        return "Processing bank transaction of \(amount)"
    }
}

let cryptoTx = CryptoTransaction(amount: 250.0)
let bankTx = BankTransaction(amount: 1000.0)
print(cryptoTx.process())
print(bankTx.process())
