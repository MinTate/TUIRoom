//
//  RequestEntity.swift
//  TUIRoomKit
//
//  Created by janejntang on 2024/3/20.
//

import Foundation

class RequestEntity {
    let requestId: String
    let userId: String
    var userName: String = ""
    var avatarUrl: String = ""
    
    init(requestId: String, userId: String) {
        self.requestId = requestId
        self.userId = userId
        guard let userItem = EngineManager.createInstance().store.attendeeList.first(where: { $0.userId == userId }) else { return }
        userName = userItem.userName
        avatarUrl = userItem.avatarUrl
    }
    
    deinit {
        debugPrint("deinit \(self)")
    }
}
