//
//  Pet_Yes_2_0App.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 17.03.2023.
//

import SwiftUI

@main
struct Pet_Yes_2_0App: App {
    var body: some Scene {
        WindowGroup {
            ContentView (articles: [
                Article(image: "article1", title: "Заголовок статьи 1", description: "Описание статьи 1", date: "01.01.2022"),
                Article(image: "article2", title: "Заголовок статьи 2", description: "Описание статьи 2", date: "02.01.2022"),
                Article(image: "article3", title: "Заголовок статьи 3", description: "Описание статьи 3", date: "03.01.2022"),
                Article(image: "article4", title: "Заголовок статьи 4", description: "Описание статьи 4", date: "04.01.2022") ])
        }
    }
}
