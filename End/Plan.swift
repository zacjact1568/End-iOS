//
//  Plan.swift
//  End
//
//  Created by Zack Zhang on 2017/7/25.
//  Copyright © 2017年 Zack Zhang. All rights reserved.
//

import Foundation

//结构体是值类型
struct Plan {
    
    static let STAR_STATUS_NOT_STARRED = 0
    static let STAR_STATUS_STARRED = 1
    
    //TODO 数据库中字段为plan_code，下同
    let code: String
    var content: String!
    var typeCode: String!
    //Int默认64位，相当于Int64或其他语言中的Long
    var creationTime: Int!
    var deadline: Int?
    var completionTime: Int!
    var starStatus: Int!
    var reminderTime: Int?
    var note: String?
    
    var hasDeadline: Bool {
        //只读计算属性，只有getter，但是get可以省略
        return deadline != UNDEFINED_TIME
    }
    var isCompleted: Bool {
        return completionTime != UNDEFINED_TIME
    }
    var isStarred: Bool {
        //非静态区域，要使用静态属性需要加结构体名
        return starStatus == Plan.STAR_STATUS_STARRED
    }
    var hasReminder: Bool {
        return reminderTime != UNDEFINED_TIME
    }
    
    init(code: String) {
        //常量属性必须在构造结束前初始化完成
        self.code = code
        self.creationTime = UNDEFINED_TIME
        self.deadline = UNDEFINED_TIME
        self.completionTime = UNDEFINED_TIME
        self.starStatus = Plan.STAR_STATUS_NOT_STARRED
    }
    
    //要修改值类型的属性须加mutating关键字
    mutating func invertStarStatus() {
        starStatus = isStarred ? Plan.STAR_STATUS_NOT_STARRED : Plan.STAR_STATUS_STARRED
    }
    
    static func create() -> Plan {
        return Plan(code: makeCode())
    }
    
    static func mockPlans() -> [Plan] {
        var planA = Plan.create()
        planA.content = "MOCKPLANCONTENT0"
        planA.typeCode = "MOCKTYPECODE0"
        var planB = Plan.create()
        planB.content = "MOCKPLANCONTENT1"
        planB.typeCode = "MOCKTYPECODE1"
        return [planA, planB]
    }
}
