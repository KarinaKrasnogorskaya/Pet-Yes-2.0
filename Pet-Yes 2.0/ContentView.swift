//
//  ContentView.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 17.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var articles: [Article]
    @State private var pageIndex = 0
    private let pages: [Page] = Page.onboarding
    private let dotAppearence = UIPageControl.appearance()
    
    
    var body: some View {
        NavigationStack {
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        OnboardingPage(page: page)
                        Spacer()
                        if page == pages.last {
                            NavigationLink("Sign Up") {
                                NavigationView {
                                    ArticlesScreen( articles: articles)
                                }
                            }
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
    }
    
    func incrementPage() {
        pageIndex += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(articles: [
            Article(image: "article1", title: "Заголовок статьи 1", description: "Описание статьи 1", date: "01.01.2022"),
            Article(image: "article2", title: "Заголовок статьи 2", description: "Описание статьи 2", date: "02.01.2022"),
            Article(image: "article3", title: "Заголовок статьи 3", description: "Описание статьи 3", date: "03.01.2022"),
            Article(image: "article4", title: "Заголовок статьи 4", description: "Описание статьи 4", date: "04.01.2022") ])
    }
}
