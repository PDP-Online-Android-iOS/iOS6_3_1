//
//  SecondScreen.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 01/12/22.
//

import SwiftUI

struct SecondScreen: View {
    
    @ObservedObject var info: Data
    
    var body: some View {
        VStack {
            Text("User ID: \(info.userID)")
                .padding()
            Text("User PW: \(info.userPassword)")
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(info: Data())
    }
}
