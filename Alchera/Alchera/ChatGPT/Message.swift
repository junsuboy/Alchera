//
//  Message.swift
//  Alchera
//
//  Created by Junsu Jang on 10/15/23.
//

import Foundation
import MessageKit
import UIKit

struct Message: MessageType {
    
    let id: String?
    var messageId: String {
        return id ?? UUID().uuidString
    }
    let content: String
    let sentDate: Date
    let sender: SenderType
    var kind: MessageKind {
        return .text(content)
    }
    
    var downloadURL: URL?
    
    init(content: String, isAnswer: Bool) {
        sender = isAnswer ? Sender(senderId: "chatgpt", displayName: "ChatGPT") :  Sender(senderId: "junsu", displayName: "Junsu")
        self.content = content
        sentDate = Date()
        id = nil
    }
}

extension Message: Comparable {
    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func < (lhs: Message, rhs: Message) -> Bool {
        return lhs.sentDate < rhs.sentDate
    }
}

import MessageKit

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}
