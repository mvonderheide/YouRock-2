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
            
            Text("Miguel, you rock because you exhibited self-discipline and perseverance!")
            
            Image("Perseverance2")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
                .padding(100)
            
            NavigationLink(
                destination: Period1N(),
                label: {
                    Text("Recognize another student")
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
    }
}
}
