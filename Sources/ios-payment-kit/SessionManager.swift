


import UIKit

class SessionManager: NSObject {
  
  static private let userDefaultSessionKey = "swift-ui-base-session"
  
  static var currentSession: Session? {
    get {
      if
        let data = UserDefaults.standard.data(forKey: userDefaultSessionKey),
        let session = try? JSONDecoder().decode(Session.self, from: data)
      {
        return session
      }
      return nil
    }
    
    set {
      let session = try? JSONEncoder().encode(newValue)
      UserDefaults.standard.set(session, forKey: userDefaultSessionKey)
    }
  }
  
  class func deleteSession() {
    UserDefaults.standard.removeObject(forKey: userDefaultSessionKey)
  }
  
  static var isValidSession: Bool {

      if
        let session = currentSession,
       
        let token = session.accessToken
        
      {
        return  !token.isEmpty 
      }
      
      return false
  }
}
