//
//  OnboardingPage.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 17.03.2023.
//

import SwiftUI

struct OnboardingPage: View {
    var page: Page
    var body: some View {
        VStack(spacing: 20) {
            Image(page.imageUrl)
                .resizable()
                .scaledToFit()
            Text(page.name)
                .font(.title)
                .frame(maxWidth: .infinity)
            Text(page.description)
                .font(.subheadline)
                .frame(maxWidth: .infinity)
                
                
            
        }
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage(page: Page.simple)
    }
}

