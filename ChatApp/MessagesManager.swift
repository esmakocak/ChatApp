//
//  MessagesManager.swift
//  ChatApp
//
//  Created by Esma Koçak on 16.08.2024.
//

import Foundation
import FirebaseFirestore

class MessagesManager: ObservableObject {
    @Published private(set) var messages: [Message] = []
    @Published private(set) var lastMessageId: String = ""
    
    // Create an instance of Firestore database
    let db = Firestore.firestore()
    
    // initializer for getting messages from Firestore
    init() {
        getMessages()
    }

    // Read message from Firestore in real-time with the addSnapShotListener
    func getMessages() {
        db.collection("messages").addSnapshotListener { querySnapshot, error in
            
            // If there is no documents, exit the function
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documents: \(String(describing: error))")
                return
            }
            
            // Map through the documents
            self.messages = documents.compactMap { document -> Message? in
                do {
                    // Converting each document into the Message model
                    return try document.data(as: Message.self)
                } catch {
                    print("Error decoding document into Message: \(error)")

                    return nil
                }
            }
            

        }
    }
    

}
