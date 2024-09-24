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
    
    func configure(urlPreviewData: URLPreviewData) {
        DebugHelper.addLog(text: "[before api call] urlPreviewData is \(Unmanaged.passUnretained(urlPreviewData).toOpaque()) and urlString is \(urlPreviewData.fullUrl)")
        label.text = "loading api data"
        loader.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now()+10.0) {
            DebugHelper.addLog(text: "[afterr api call] urlPreviewData is \(Unmanaged.passUnretained(urlPreviewData).toOpaque()) and urlString is \(urlPreviewData.fullUrl)")
            self.loader.stopAnimating()
            self.label.text = "loaded and \(urlPreviewData.fullUrl)"
            NotificationCenter.default.post(name: .updateUI,
                                            object: nil,
                                            userInfo: ["urlPreviewData": urlPreviewData])
        }
    }
}
