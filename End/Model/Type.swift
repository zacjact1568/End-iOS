//
//  Type.swift
//  End
//
//  Created by Zack Zhang on 2017/7/25.
//  Copyright © 2017年 Zack Zhang. All rights reserved.
//

import Foundation

struct Type {

    let code: String
    var name: String!
    var markColor: String!
    var markPattern: String?
    var sequence: Int!

    var hasMarkPattern: Bool {
        return markPattern != nil
    }

    init(code: String) {
        self.code = code
    }

    static func create() -> Type {
        return Type(code: makeCode())
    }

    static func mockTypes() -> [Type] {
        var typeA = Type.create()
        typeA.name = "MOCKTYPENAME0"
        typeA.sequence = 0
        var typeB = Type.create()
        typeB.name = "MOCKTYPENAME1"
        typeB.sequence = 1
        return [typeA, typeB]
    }
}
