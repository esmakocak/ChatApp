//
//  ContentView.swift
//  ChatApp
//
//  Created by Esma Koçak on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
    var messageArray = ["Hi there!", "How are you doing", "I miss you, can we hangout sometime?"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messagesManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
                
            }
            .background(Color("Peach"))
            MessageField()
        }
        
    }
}

#Preview {
    ContentView()
}
