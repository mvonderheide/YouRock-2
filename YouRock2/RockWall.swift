//
//  RockWall.swift
//  YouRock2
//
//  Created by admin on 5/7/21.
//

import SwiftUI

struct RockWall: View {
    var body: some View {
        Image("rockWall1")
            .resizable()
            .scaledToFit()
            .frame(width: 350)
            .padding(100)
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

struct RockWall_Previews: PreviewProvider {
    static var previews: some View {
        RockWall()
    }
}
}
