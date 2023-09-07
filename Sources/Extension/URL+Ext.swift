//
//  URL+Ext.swift
//  VideoCache
//
//  Created by SoalHunag on 2019/2/22.
//  Copyright © 2019 soso. All rights reserved.
//

import Foundation
import MobileCoreServices

extension URL {
    
    static let VideoCacheScheme = "__VideoCache__:"
    
    var isCacheScheme: Bool {
        absoluteString.contains(URL.VideoCacheScheme)
    }
    
    var originUrl: URL {
        URL(string: absoluteString.replacingOccurrences(of: URL.VideoCacheScheme, with: "")) ?? self
    }
    
    var contentType: String? {
        UTTypeCreatePreferredIdentifierForTag(kUTTagClassMIMEType, pathExtension as CFString, nil)?.takeRetainedValue() as String?
    }
}
