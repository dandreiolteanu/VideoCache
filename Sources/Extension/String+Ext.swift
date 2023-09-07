//
//  String+Ext.swift
//  VideoCache
//
//  Created by SoalHunag on 2019/2/22.
//  Copyright © 2019 soso. All rights reserved.
//

import Foundation
import CryptoKit

extension String {
    var videoCacheMD5: String {
        Insecure.MD5.hash(data: Data(utf8)).map { String(format: "%02hhx", $0) }.joined()
    }
}
