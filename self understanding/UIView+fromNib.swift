//
//  UIView+fromNib.swift
//  self understanding
//
//  Created by REVE Systems on 22/9/24.
//

import UIKit

extension UIView {
    class func fromNib() -> Self {
        guard let view = Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?.first as? Self else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }
}
