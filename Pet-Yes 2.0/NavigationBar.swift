//
//  NavigationBar.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 23.03.2023.
//

import SwiftUI

import SwiftUI

struct NavigationBar: View {
    init() {
           // Настройка внешнего вида NavigationBar
           let appearance = UINavigationBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = UIColor(Color("dark"))
           appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
           UINavigationBar.appearance().scrollEdgeAppearance = appearance
           UINavigationBar.appearance().standardAppearance = appearance
       }
  
    
    
    
    var body: some View {
        NavigationView {
            VStack {
               Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Image(uiImage: UIImage(imageLiteralResourceName: "logo"))
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 120)
                                .foregroundColor(.white)
                                
                        }
                        
                    }
            }
        }
    }
        
        
}
