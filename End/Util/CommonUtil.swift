//
//  CommonUtil.swift
//  End
//
//  Created by Zack Zhang on 2017/7/30.
//  Copyright © 2017年 Zack Zhang. All rights reserved.
//

import Foundation

func makeCode() -> String {
    let uuid = UUID().uuidString
    let index = uuid.index(uuid.startIndex, offsetBy: 8)
    return uuid.substring(to: index)
}
