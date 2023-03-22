//
//  StandartButton.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 22.03.2023.
//

import SwiftUI

struct StandartButton: View {
    @State var action: () -> Void
    @State var textButton: String = "Next"
    @State var color = Color("lightGreen")
    @State var colorDark = Color("darkGreen")
    @State var frameHeight: CGFloat = 60
    @State var frameWight: CGFloat = 100
    
    
    var body: some View {
        Text( textButton )
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .frame(minWidth: frameWight, maxHeight: frameHeight)
            .background(color)
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(colorDark ,style: StrokeStyle(lineWidth: 1 ))
            }
           
    }
}

/* struct StandartButton_Previews: PreviewProvider {
    static var previews: some View {
        StandartButton()
    }
} */
