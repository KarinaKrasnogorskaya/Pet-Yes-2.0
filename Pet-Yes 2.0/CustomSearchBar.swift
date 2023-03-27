//
//  SearchBar.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 23.03.2023.
//


import SwiftUI

struct CustomSearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
            
            if isEditing {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing, 8)
                }
            }
            
            TextField("Search", text: $text)
            
        }
        .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
        .font(.headline)
        .background(.ultraThinMaterial)
        .foregroundColor(.white.opacity(0.6))
        .cornerRadius(20)
        
        if isEditing {
            Button(action: {
                self.isEditing = false
                self.text = ""
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            } ) {
                Text("Cancel")
                    .foregroundColor(.gray)
            }
        }
    }
   
    
}

struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar(text: .constant(""))
    }
}
