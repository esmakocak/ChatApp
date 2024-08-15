//
//  ContentView.swift
//  ChatApp
//
//  Created by Esma Koçak on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hi there!", "How are you doing", "I miss you, can we hangout sometime?"]
    
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageArray, id: \.self){ text in
                    MessageBubble(message: Message(id: "12345", text: text, isReceived: false, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(.white)
            
        }
        .background(Color("Peach"))
    }
}

#Preview {
    ContentView()
}
