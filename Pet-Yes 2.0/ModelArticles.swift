//
//  ModelArticles.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 23.03.2023.
//

import Foundation

struct Article: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    var description: String
    var date: String
}

let articles = [
    Article(image: "article1", title: "Как правильно организовать кормление кошки?", description: "Описание статьи 1", date: "01.01.2022"),
    Article(image: "article2", title: "Профилактика болезней у домашних животных", description: "Описание статьи 2", date: "02.01.2022"),
    Article(image: "article3", title: "Безболезненное лечение зубов у кошек и собак", description: "Описание статьи 3", date: "03.01.2022"),
    Article(image: "article4", title: "Взяли брошенного щенка или котенка к себе домой?", description: "Описание статьи 4", date: "04.01.2022")
]


