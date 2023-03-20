//
//  ContentView.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 17.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.onboarding
    private let dotAppearence = UIPageControl.appearance()
    
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    OnboardingPage(page: page)
                    Spacer()
                    if page == pages.last {
                        Button("Sign Up", action: goToZero)
                            .buttonStyle(.bordered)
                    } else {
                        Button("Next", action: incrementPage)
                    }
                    Spacer()
                }
                .tag(page.tag)
            }
        }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotAppearence.currentPageIndicatorTintColor = .black
            dotAppearence.pageIndicatorTintColor = .gray
        }
    }
    
    func incrementPage() {
        pageIndex += 1
    }
    
    func goToZero() {
        pageIndex = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
