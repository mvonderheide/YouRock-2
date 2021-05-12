//
//  StudentRecognition.swift
//  YouRock2
//
//  Created by admin on 4/22/21.
//

import SwiftUI
import AppDevWithSwiftLibrary

struct StudentRecognition: View {
    var body: some View {
        
        VStack {
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(color:.red, radius: 5)
                    .shadow(radius: 5)
                    .frame(height: 100)
                Text("Kevin, you rock because you exhibited self-discipline and perseverance!")
                    .font(.system(size: 25))
            }
            .padding()
            
            Image("Kevin")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(color:.blue, radius: 5)
                .frame(width: 300)
                .padding()
            Spacer()
            
            NavigationLink(
                destination: ContentView(),
                label: {
                    Image(systemName: "house")
                })
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image("youRock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50
                        )
                        .padding(100)
                }
            }
        }
    }
    struct StudentRecognition_Previews: PreviewProvider {
        static var previews: some View {
            StudentRecognition()
            StudentRecognition()
                .environment(\.locale, Locale(identifier: "es"))
        }
    }
}

