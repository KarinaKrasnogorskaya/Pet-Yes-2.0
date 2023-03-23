//
//  MainScreen.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 22.03.2023.
//

import SwiftUI

struct MainScreen: View {
    
    var body: some View {
        ZStack {
            NavigationBar()
                .navigationBarBackButtonHidden(true)
        }
    }
        
        
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
