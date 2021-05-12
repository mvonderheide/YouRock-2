//
//  Data1N.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

struct Data1N: View {
    
    let width1 : CGFloat = 125
    let width2 : CGFloat = 150
    let width3 : CGFloat = 80
    let height1: CGFloat = 40
    let cornerRad: CGFloat = 4
    
    @State var rosterData1N = [Student]()
    @State var sortedData = [Student]()
    
    var body: some View {
        VStack {
            ZStack {
                
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(color: .red, radius: 5)
                            .frame(height: 50)
                        
                        Text("1st Period Rocks!")
                            .font(.title)
                    }
                    
                    Image("rockWall")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    
                }
            }
            HStack{
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(width: width1, height: height1)
                    Text("First Name")
                        .fontWeight(.bold)
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(width: width2, height: height1)
                    Text("Last Name")
                        .fontWeight(.bold)
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(width: 85, height: height1)
                    Text("# of Rocks")
                        .fontWeight(.bold)
                    
                }
            }
            
            
            ForEach(sortedData, id:\.self) { s in
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width1, height: height1)
                        Text(s.firstName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width2, height: height1)
                        Text(s.lastName + " ")
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: width3, height: height1)
                        Text(String(s.numRocks))
                    }
                    
                }
                
            }
            
            
        }.onAppear() {
            sortedData = rosterData1N.sorted(by: { (s1, s2) -> Bool in
                s1.numRocks > s2.numRocks
            })
        } .navigationBarTitleDisplayMode(.inline)
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

struct Data1N_Previews: PreviewProvider {
    static var previews: some View {
        Data1N()
        Data1N()
            .environment(\.locale, Locale(identifier: "es"))
    }
}
////
////  Data1.swift
////  YouRock!
////
////  Created by admin on 4/16/21.
////
//
//import SwiftUI
//import AppDevWithSwiftLibrary
///*
// NavigationView
// Image miniLogoBar
// VStack
// Text "1st Period Rocks"
// Image classData
// //Stretch - forEach to go through all students and show text of names and number of rocks
//
// */
//struct Data1N: View {
//
//    let width1 : CGFloat = 125
//    let width2 : CGFloat = 150
//    let width3 : CGFloat = 80
//    let height1: CGFloat = 40
//    let cornerRad: CGFloat = 4
//
//    @State var rosterData1N = [Student]()
//    @State var sortedData = [Student]()
//
//    var body: some View {
//
//        let leaderBoard1 : [Student] = [student1, student2, student3, student4, student5, student6]
//
//        VStack {
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.white)
//                    .shadow(radius: 5)
//                    .frame(height: 50)
//                Text("1st Period Rocks!")
//                    .font(.title)
//            }
//
//            HStack{
//
//                ZStack {
//                    Rectangle()
//                        .foregroundColor(.white)
//                        .shadow(radius: 5)
//                        .frame(width: width1, height: height1)
//                    Text("First Name")
//                }
//                ZStack {
//                    Rectangle()
//                        .foregroundColor(.white)
//                        .shadow(radius: 5)
//                        .frame(width: width2, height: height1)
//                    Text("Last Name")
//                }
//                ZStack {
//                    Rectangle()
//                        .foregroundColor(.white)
//                        .shadow(radius: 5)
//                        .frame(width: width3, height: height1)
//                    Text("# of Rocks")
//
//                }
//            }
//
//            ForEach(sortedData, id:\.self) { s in
//                HStack{
//                    ZStack {
//                        RoundedRectangle(cornerRadius: cornerRad)
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                            .frame(width: width1, height: height1)
//                        Text(s.firstName + " ")
//                    }
//                    ZStack {
//                        RoundedRectangle(cornerRadius: cornerRad)
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                            .frame(width: width2, height: height1)
//                        Text(s.lastName + " ")
//                    }
//                    ZStack {
//                        RoundedRectangle(cornerRadius: cornerRad)
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                            .frame(width: width3, height: height1)
//                        Text(String(s.numRocks))
//                    }
//                }
//
//            }
//
//        }.onAppear() {
//            sortedData = rosterData1N.sorted(by: { (s1, s2) -> Bool in
//                s1.numRocks > s2.numRocks
//            })
//        }
//
//    }
//}
//
////            HStack{
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width1, height: height1)
////                    Text(student1.firstName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width2, height: height1)
////                    Text(student1.lastName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width3, height: height1)
////                    Text(String(student1.numRocks))
////                }
////            }
////            HStack{
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width1, height: height1)
////                    Text(student2.firstName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width2, height: height1)
////                    Text(student2.lastName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width3, height: height1)
////                    Text(String(student2.numRocks))
////                }
////            }
////
////            HStack{
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width1, height: height1)
////                    Text(student3.firstName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width2, height: height1)
////                    Text(student3.lastName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width3, height: height1)
////                    Text(String(student3.numRocks))
////                }
////            }
////
////            HStack{
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width1, height: height1)
////                    Text(student4.firstName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width2, height: height1)
////                    Text(student4.lastName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width3, height: height1)
////                    Text(String(student4.numRocks))
////                }
////            }
////
////            HStack{
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width1, height: height1)
////                    Text(student5.firstName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width2, height: height1)
////                    Text(student5.lastName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width3, height: height1)
////                    Text(String(student5.numRocks))
////                }
////            }
////
////            HStack{
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width1, height: height1)
////                    Text(student6.firstName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width2, height: height1)
////                    Text(student6.lastName + " ")
////                }
////                ZStack {
////                    Rectangle()
////                        .foregroundColor(.white)
////                        .shadow(radius: 5)
////                        .frame(width: width3, height: height1)
////                    Text(String(student6.numRocks))
////                }
////            }
//
////            .navigationBarTitleDisplayMode(.inline)
////            .toolbar {
////                ToolbarItem(placement: .principal) {
////                    HStack {
////                        Image("youRock")
////                            .resizable()
////                            .scaledToFit()
////                            .frame(width: 50
////                            )
////                            .padding(100)
////
////                    }
////                }
//
//
//    struct Data1N_Previews: PreviewProvider {
//        static var previews: some View {
//            Data1N()
//            Data1N()
//                .environment(\.locale, Locale(identifier: "es"))
//        }
//    }
//
//
