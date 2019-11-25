//
//  VURL.swift
//  VideoCache
//
//  Created by SoalHunag on 2019/2/24.
//  Copyright © 2019 soso. All rights reserved.
//

import UIKit

public protocol VideoURLType {
    
    var key: String { get }
    var url: URL { get }
    var includeVideoCacheSchemeUrl: URL { get }
}

let VideoCacheConfigFileExt = "cfg"

extension VURL: VideoURLType {
    
    public var key: String {
        return cacheKey
    }
    
    public var url: URL {
        return originUrl
    }
    
    public var includeVideoCacheSchemeUrl: URL {
        return URL(string: URL.VideoCacheScheme + url.absoluteString)!
    }
}

class VURL: NSObject, NSCoding {
    
    var cacheKey: String
    
    var originUrl: URL
    
    required init?(coder aDecoder: NSCoder) {
        cacheKey = aDecoder.decodeObject(forKey: "key") as! String
        originUrl = URL(string: aDecoder.decodeObject(forKey: "url") as! String)!
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(cacheKey, forKey: "key")
        aCoder.encode(originUrl.absoluteString, forKey: "url")
    }
    
    init(cacheKey: String, originUrl: URL) {
        self.cacheKey = cacheKey
        self.originUrl = originUrl
        super.init()
    }
    
    override var description: String {
        return ["cacheKey": cacheKey, "originUrl": originUrl].description
    }
}
