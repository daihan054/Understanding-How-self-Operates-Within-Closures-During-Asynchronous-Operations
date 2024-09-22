//
//  DebugHelper.swift
//  self understanding
//
//  Created by REVE Systems on 22/9/24.
//

import Foundation

class DebugHelper {
    
    static func getTimeStamp() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM yyyy HH:mm:ss.SSSS"
        let timestamp = dateFormatter.string(from: Date())
        return timestamp
    }
    
    static func addLog(text: String?) {
        guard let text = text else { return }
        
        print("\(getTimeStamp()) : \(text)\n")
    }
}
