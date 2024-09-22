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
        addUrlPreview(with: "bbc.com")
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        addUrlPreview(with: "cnn.com")
    }
    
    func addUrlPreview(with urlString: String) {
        let urlPreview = URLPreview.fromNib()
        stackView.addArrangedSubview(urlPreview)
        urlPreview.configure(urlString: urlString)
    }
    
}

