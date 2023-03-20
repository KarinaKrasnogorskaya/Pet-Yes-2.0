//
//  OnboardingModel.swift
//  Pet-Yes 2.0
//
//  Created by Карина on 17.03.2023.
//

import Foundation

struct Page: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var simple = Page(name: "Hello", description: "Description", imageUrl: "ScreenOne", tag: 0)
    
    static var onboarding: [Page] = [
        Page(name: "Hello", description: "Description", imageUrl: "ScreenOne", tag: 0),
        Page(name: "HelloTwo", description: "Description", imageUrl: "ScreenTwo", tag: 1),
        Page(name: "HelloThree", description: "Description", imageUrl: "ScreenThree", tag: 2)
    ]
    
}
