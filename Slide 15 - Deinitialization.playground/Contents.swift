/*
README: SLIDE 15 - DEINITIALIZATION
This slide demonstrates the use of deinitializers to clean up resources.
Additional Use Cases:
• Simulating resource allocation and cleanup.
*/

/// Class with deinitializer simulating a session
class CryptoSession {
    var sessionID: String
    init(sessionID: String) {
        self.sessionID = sessionID
        print("Session \(sessionID) started")
    }
    deinit {
        print("Session \(sessionID) ended")
    }
}
var sessionInstance: CryptoSession? = CryptoSession(sessionID: "Session1")
sessionInstance = nil  // deinitializer is called
