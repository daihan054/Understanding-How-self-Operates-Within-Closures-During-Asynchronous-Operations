//
//  URLPreview.swift
//  self understanding
//
//  Created by REVE Systems on 22/9/24.
//

import UIKit

class URLPreview: UIView {
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var label: UILabel!
    
    var urlString: String?
    
    func configure(urlString: String?) {
        self.urlString = urlString
        DebugHelper.addLog(text: "[before api call] self is \(Unmanaged.passUnretained(self).toOpaque()), self.urlString is \(self.urlString)")
        label.text = "loading api data"
        loader.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now()+10.0) {
            DebugHelper.addLog(text: "[after api call] self is \(Unmanaged.passUnretained(self).toOpaque()), self.urlString is \(self.urlString)")
            self.loader.stopAnimating()
            self.label.text = "loaded and \(self.urlString)"
        }
    }
    
    deinit {
        DebugHelper.addLog(text: "self is deallocated, self is \(Unmanaged.passUnretained(self).toOpaque())")
    }
}
