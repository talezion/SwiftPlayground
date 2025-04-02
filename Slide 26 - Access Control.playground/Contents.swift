/*
README: SLIDE 29 - ACCESS CONTROL
This slide explains Swift's access control modifiers.
Additional Use Cases:
• Demonstrating the use of public, internal, fileprivate, and private.
• Encapsulating implementation details with private and fileprivate.
*/

public class Ledger {
    internal var entries: [String] = []
    fileprivate func addEntry(_ entry: String) {
        entries.append(entry)
    }
    
    // Private function not accessible outside the class
    private func secretEntry() -> String {
        return "Secret"
    }
    
    func showSecret() -> String {
        return secretEntry()
    }
}
let ledger = Ledger()
ledger.addEntry("Transaction1")
print("Ledger entries: \(ledger.entries)")
print("Secret entry: \(ledger.showSecret())")
