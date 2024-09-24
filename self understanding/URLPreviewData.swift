//
//  URLPreviewData.swift
//  ReveChatApplication
//
//  Created by REVE Systems on 2/9/24.
//  Copyright © 2024 REVESystems. All rights reserved.
//

import LinkPresentation

class URLPreviewData {
    
    var fullUrl: String
    var thumbnailImage: UIImage?
    var thumbnailTitle: String?
    var baseUrl: String?
    var isDownloading: Bool?
    var isDownloaded: Bool?
    var fetchingFailed: Bool?
    
    init(fullUrl: String) {
        self.fullUrl = fullUrl
    }

}
