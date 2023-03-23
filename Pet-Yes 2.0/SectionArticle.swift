//
//  SectionArticle.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 23.03.2023.
//

import SwiftUI

struct SectionArticle: View {
    @State var articleImages: [String] = ["article1", "article2", "article3", "article4"]
    @State var articleData: [String] = ["22 марта 2022", "2 марта 2022", "20 апреля 2022", "3 марта 2022"]
    @State var articleTitle: [String] = ["Как правильно организовать кормление кошки?", "Профилактика болезней у домашних животных", "Безболезненное лечение зубов у кошек и собак", "Взяли брошенного щенка или котенка к себе домой?"]
    @State var articleSubtitle: [String] = ["В отличие от собак, кошки на сто процентов являются плотоядными хищниками, поэтому для них больше всего подходит натуральное кормление.","Каждая ветклиника предлагает хозяевам собак провести вакцинацию животного, чтобы предотвратить его заражение инфекционными заболеваниями, но для этого вакцины следует вводить своевременно.","Современная ветеринарная стоматология обеспечивает поддержание ротовой полости животных в абсолютном порядке в течение всей жизни.","Если вы проявили сочувствие к щенку или котенку на улице, у вас есть повод для некоторого беспокойства. Вначале нужно внимательно осмотреть животное: приглядитесь, нет ли у него дефекта кожного покрова, проплешин и расчесов, выделений из носа или глаз."]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("article1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .frame(width: 250, height: 200)
                .padding(.top, -150)
            
                .background(
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 400)
                .shadow(radius: 10))
            VStack(alignment: .leading, spacing: 5) {
                Text(articleData[1])
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)

                Text(articleTitle[1])
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .frame(width: 260)
                    .font(.title2)
                    
                Text(articleSubtitle[1])
                    .multilineTextAlignment(.leading)
                    .frame(width: 260)
                    .lineLimit(2)
                
            }

        }
    }
}

struct SectionArticle_Previews: PreviewProvider {
    static var previews: some View {
        SectionArticle()
    }
}
