//
//  Data1.swift
//  YouRock!
//
//  Created by admin on 4/16/21.
//
 
import SwiftUI
/*
 NavigationView
    Image miniLogoBar
    VStack
        Text "1st Period Rocks"
        Image classData
        //Stretch - forEach to go through all students and show text of names and number of rocks
        
 */
struct Data1N: View {
    var body: some View {
        NavigationView {
            VStack {
               
                Text("1st Period Rocks!")
                    .font(.title)
                Image("data1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .padding(50)
                HStack{
                    NavigationLink(
                        destination: Period1N(),
                        label: {
                            Text("Start Over")
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
        }
    }
    
    
    
    struct WelcomeScreen_Previews: PreviewProvider {
        static var previews: some View {
            Data1N()
        }
    }
}


