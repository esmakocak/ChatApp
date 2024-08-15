//
//  Message.swift
//  ChatApp
//
//  Created by Esma Koçak on 15.08.2024.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool //if the user is receiver of the message this state will true
    var timestamp: Date
}
