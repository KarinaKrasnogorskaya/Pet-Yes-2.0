//
//  SectionArticle.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 23.03.2023.
//

import SwiftUI

/* struct SectionArticle: View {
    @State var articleImages: [String] = ["article1", "article2", "article3", "article4"]
    @State var articleData: [String] = ["22 марта 2022", "2 марта 2022", "20 апреля 2022", "3 марта 2022"]
    @State var articleTitle: [String] = ["Как правильно организовать кормление кошки?", "Профилактика болезней у домашних животных", "Безболезненное лечение зубов у кошек и собак", "Взяли брошенного щенка или котенка к себе домой?"]
    @State var articleSubtitle: [String] = ["В отличие от собак, кошки на сто процентов являются плотоядными хищниками, поэтому для них больше всего подходит натуральное кормление.","Каждая ветклиника предлагает хозяевам собак провести вакцинацию животного, чтобы предотвратить его заражение инфекционными заболеваниями, но для этого вакцины следует вводить своевременно.","Современная ветеринарная стоматология обеспечивает поддержание ротовой полости животных в абсолютном порядке в течение всей жизни.","Если вы проявили сочувствие к щенку или котенку на улице, у вас есть повод для некоторого беспокойства. Вначале нужно внимательно осмотреть животное: приглядитесь, нет ли у него дефекта кожного покрова, проплешин и расчесов, выделений из носа или глаз."] */
    
struct ArticleCell: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .center) {
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame( height: 200)
                .cornerRadius(10)
                .padding(.top, 10)
            
            Text(article.date)
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            Text(article.title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 8)
            
            Text(article.description)
                .font(.body)
                .foregroundColor(.gray)
                .padding(.top, 8)
                .lineLimit(nil)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color.white)
               .cornerRadius(10)
               .shadow(radius: 5)
    }
    
}








struct SectionArticle_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCell(article: Article(image: "article1", title: "Заголовок", description: "Описание", date: "22.04.2022"))
    }
}
