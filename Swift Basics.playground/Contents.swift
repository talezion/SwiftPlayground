import UIKit
import Foundation

// SLIDE 1: THE BASICS OF SWIFT

let movieTitle = "Inception"
print("Now playing: \(movieTitle)")

// SLIDE 2: BASIC OPERATORS
let distanceA = 100  // in kilometers
let distanceB = 150
let totalDistance = distanceA + distanceB
print("Total travel distance: \(totalDistance) km")

// SLIDE 3: STRINGS AND CHARACTERS
let currency = "USD"
let amount = 1000
let transaction = "Deposit: \(amount) \(currency)"
print(transaction)

// SLIDE 4: COLLECTION TYPES
let blockTransactions = ["tx1", "tx2", "tx3"]
let blockData: [String: Double] = ["tx1": 0.5, "tx2": 1.2]
let uniqueAddresses: Set = ["addr1", "addr2", "addr3"]
print(blockTransactions)

// SLIDE 5: CONTROL FLOW
let cryptoPrice = 50000
if cryptoPrice > 40000 {
    print("Bull Market!")
} else {
    print("Bear Market!")
}

// SLIDE 6: FUNCTIONS
func showMovie(title: String) -> String {
    return "Now showing: \(title)"
}
print(showMovie(title: "The Matrix"))

// SLIDE 7: CLOSURES
let destinations = ["Paris", "Tokyo", "New York"]
let sortedDestinations = destinations.sorted { $0 < $1 }
print("Travel itinerary: \(sortedDestinations)")

// SLIDE 8: ENUMERATIONS
enum TransactionType: String {
    case deposit = "Deposit"
    case withdrawal = "Withdrawal"
}
let transaction = TransactionType.deposit
print("Transaction: \(transaction.rawValue)")

// SLIDE 9: STRUCTURES AND CLASSES
struct Block {
    var hash: String
    var previousHash: String
}
class Blockchain {
    var chain: [Block] = []
}
print("Blockchain initialized with \(Blockchain().chain.count) blocks")

// SLIDE 10: PROPERTIES
struct CryptoWallet {
    var balance: Double {
        didSet {
            print("Wallet balance updated: \(balance)")
        }
    }
}
var myWallet = CryptoWallet(balance: 1.0)
myWallet.balance = 1.5

// SLIDE 11: METHODS
struct Movie {
    var title: String
    func description() -> String {
        return "Movie: \(title)"
    }
}
let film = Movie(title: "Interstellar")
print(film.description())

// SLIDE 12: SUBSCRIPTS
struct Itinerary {
    var destinations: [String]
    subscript(index: Int) -> String {
        return destinations[index]
    }
}
let trip = Itinerary(destinations: ["London", "Berlin", "Rome"])
print("Destination: \(trip[1])")

// SLIDE 13: INHERITANCE
class Account {
    var balance: Double
    init(balance: Double) {
        self.balance = balance
    }
}
class SavingsAccount: Account {
    override init(balance: Double) {
        super.init(balance: balance)
    }
}
print("Savings Account Balance: \(SavingsAccount(balance: 1000).balance)")

// SLIDE 14: INITIALIZATION
struct Transaction {
    var id: String
    init?(id: String) {
        if id.isEmpty { return nil }
        self.id = id
    }
}
if let tx = Transaction(id: "abc123") {
    print("Transaction ID: \(tx.id)")
}

// SLIDE 15: DEINITIALIZATION
class CryptoSession {
    deinit {
        print("Crypto session ended")
    }
}
var session: CryptoSession? = CryptoSession()
session = nil  // deinitializer is called

// SLIDE 16: OPTIONAL CHAINING
class Director {
    var name: String
    init(name: String) { self.name = name }
}
class Film {
    var director: Director?
}
let film = Film()
if let directorName = film.director?.name {
    print("Director: \(directorName)")
} else {
    print("No director info available")
}

// SLIDE 17: ERROR HANDLING
enum TravelError: Error {
    case invalidDestination
}
func bookTrip(destination: String) throws -> String {
    if destination.isEmpty {
        throw TravelError.invalidDestination
    }
    return "Trip booked to \(destination)"
}
do {
    let confirmation = try bookTrip(destination: "Paris")
    print(confirmation)
} catch {
    print("Booking failed: \(error)")
}

// SLIDE 18: SWIFT CONCURRENCY BASICS
func fetchStockPrice() async -> Double {
    // Simulate network call for stock price
    return 150.0
}
Task {
    let price = await fetchStockPrice()
    print("Stock Price: \(price)")
}

// SLIDE 21: TYPE CASTING
class Media { }
class Movie: Media { }
let mediaItem: Media = Movie()
if let film = mediaItem as? Movie {
    print("Casting successful: \(film)")
}

// SLIDE 22: NESTED TYPES
struct Journey {
    enum Mode {
        case car, train, airplane
    }
    var mode: Mode
}
let trip = Journey(mode: .airplane)
print("Travel mode: \(trip.mode)")

// SLIDE 23: EXTENSIONS
extension Double {
    func formattedCurrency() -> String {
        return "$\(self)"
    }
}
let price = 99.99
print("Price: \(price.formattedCurrency())")

// SLIDE 24: PROTOCOLS & PROTOCOL EXTENSIONS
protocol TransactionProtocol {
    func process() -> String
}
extension TransactionProtocol {
    func process() -> String {
        return "Processing transaction..."
    }
}
struct CryptoTransaction: TransactionProtocol { }
print(CryptoTransaction().process())

// SLIDE 25: GENERICS
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
var coin1 = "Bitcoin"
var coin2 = "Ethereum"
swapValues(&coin1, &coin2)
print("Swapped coins: \(coin1), \(coin2)")

// SLIDE 25A: PROTOCOL GENERICS WITH ASSOCIATED TYPES
protocol Container {
    associatedtype Item
    var items: [Item] { get set }
    mutating func add(item: Item)
}

struct CryptoWallet: Container {
    var items: [String] = []  // 'Item' inferred as String
    mutating func add(item: String) {
        items.append(item)
    }
}

var wallet = CryptoWallet()
wallet.add(item: "Bitcoin")
wallet.add(item: "Ethereum")
print("Wallet contains: \(wallet.items)")

// SLIDE 26: OPAQUE AND BOXED PROTOCOL TYPES
protocol Reviewable {
    func review() -> String
}
struct MovieReview: Reviewable {
    func review() -> String {
        return "A must-watch classic!"
    }
}
func getReview() -> some Reviewable {
    return MovieReview()
}
func getNReview() -> Reviewable {
    return MovieReview()
}
print(getReview().review())
print(getNReview().review())

// SLIDE 27: AUTOMATIC REFERENCE COUNTING (ARC)
class Tourist {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) has left the tour.")
    }
}
var guide: Tourist? = Tourist(name: "Alice")
guide = nil  // ARC cleans up the instance

// SLIDE 29: ACCESS CONTROL
public class Ledger {
    internal var entries: [String] = []
    fileprivate func addEntry(_ entry: String) {
        entries.append(entry)
    }
}
print("Ledger ready for secure transactions")
