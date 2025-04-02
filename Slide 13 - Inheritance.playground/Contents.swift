/*
README: SLIDE 13 - INHERITANCE
This slide demonstrates class inheritance.
Additional Use Cases:
• Base class and subclass with method overriding.
• Showing how subclass can extend functionality of its superclass.
*/

/// Base class example
class Account {
    var balance: Double
    init(balance: Double) {
        self.balance = balance
    }
    func accountInfo() -> String {
        return "Balance: \(balance)"
    }
}

/// Subclass with method overriding
class SavingsAccount: Account {
    var interestRate: Double = 0.05
    override func accountInfo() -> String {
        return super.accountInfo() + ", Interest Rate: \(interestRate * 100)%"
    }
}
let savings = SavingsAccount(balance: 1000)
print(savings.accountInfo())
