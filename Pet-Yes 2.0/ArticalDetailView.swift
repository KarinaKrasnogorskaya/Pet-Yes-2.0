//
//  ArticalDetailView.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 27.03.2023.
//

import SwiftUI

struct ArticalDetailView: View {
    var article: Article
    
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Image(article.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300)
                            .clipped()
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(article.title)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text(article.date)
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            Text(article.description)
                                .font(.body)
                                .foregroundColor(.black)
                                .lineLimit(nil)
                        }
                        .padding()
                        
                        Spacer()
                    }
                }
                .navigationBarTitle("", displayMode: .inline)
            }
        }

struct ArticalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticalDetailView(article: Article(image: "article1", title: "Заголовок", description: "Описание", date: "22.07.2022"))
    }
}
