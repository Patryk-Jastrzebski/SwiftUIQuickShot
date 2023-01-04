//
//  ForEachViewModel.swift
//  SwiftUIQuickShot
//
//  Created by Piotr Sztefko on 03/01/2023.
//

import SwiftUI

final class ForEachViewModel: ObservableObject {
    @Published var state: Examples.ExampleType = .colors
    @Published var exampleIds: [ExamplesID] = []

    let colors: [Color] = [.red, .green, .blue]
    
    let namedFonts: [NamedFont] = [
        NamedFont(name: "Large Title", font: .largeTitle),
        NamedFont(name: "Title", font: .title),
        NamedFont(name: "Headline", font: .headline),
        NamedFont(name: "Body", font: .body),
        NamedFont(name: "Caption", font: .caption)
    ]
        
    init() {
        fillList()
    }
    
    func fillList() {
        for i in 1...113 {
            exampleIds.append(ExamplesID(id: 1, title: i))
        }
    }
}

struct NamedFont: Identifiable {
    let name: String
    let font: Font
    var id: String { name }
}

struct Examples {
    enum ExampleType: String, CaseIterable {
        case numbers
        case fonts
        case colors
        case padding
        case sameId
    }
    
    let id = UUID().uuidString
    let title: String
    let type: ExampleType
}

struct ExamplesID: Identifiable {
    let id: Int
    let title: Int
}
