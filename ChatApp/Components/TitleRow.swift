//
//  TitleRow.swift
//  ChatApp
//
//  Created by Esma Koçak on 15.08.2024.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://i.pinimg.com/736x/ce/56/d1/ce56d1ccbb8eae414c3da57baa3b8fbd.jpg")
    var name = "Spencer Hastings"
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: imageUrl){ image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                Text(name)
                    .font(.title).bold()
                
                Text("online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding()
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
