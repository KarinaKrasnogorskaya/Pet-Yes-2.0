//
//  MainScreen.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 22.03.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView {
            VStack {
               Text("Ghbtn")
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.principal) {
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 40)
                }
            
            }

        }
    }
        
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
