//
//  ViewController.swift
//  self understanding
//
//  Created by REVE Systems on 18/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBroadCast()
        let urlPreviewData1 = URLPreviewData(fullUrl: "bbc.com")
        addUrlPreview(urlPreviewData: urlPreviewData1)
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        let urlPreviewData2 = URLPreviewData(fullUrl: "cnn.com")
        addUrlPreview(urlPreviewData: urlPreviewData2)
    }
    
    func addBroadCast() {
        removeBroadCasts()
        NotificationCenter.default.addObserver(self, selector: #selector(updateUI(notification:)), name: .updateUI, object: nil)
    }
    
    func removeBroadCasts() {
        NotificationCenter.default.removeObserver(self, name: .updateUI, object: nil)
    }
    
    func addUrlPreview(urlPreviewData: URLPreviewData) {
        let urlPreview = URLPreview.fromNib()
        stackView.addArrangedSubview(urlPreview)
        urlPreview.configure(urlPreviewData: urlPreviewData)
    }
    
    @objc func updateUI(notification: Notification) {
        guard let urlPreviewData = notification.userInfo?["urlPreviewData"] as? URLPreviewData else {
            return
        }
        DebugHelper.addLog(text: "[update uii call] urlPreviewData is \(Unmanaged.passUnretained(urlPreviewData).toOpaque()) and urlString is \(urlPreviewData.fullUrl)")
    }
    
    deinit {
        self.removeBroadCasts()
    }
}

