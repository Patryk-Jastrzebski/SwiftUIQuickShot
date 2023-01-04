//
//  FeaturesViewModel.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 29/12/2022.
//

import Foundation

class FeaturesViewModel: ObservableObject {
    let features: [Feature] = [
        Feature(title: "Stacks", type: .stacks),
        Feature(title: "List", type: .list),
        Feature(title: "LazyStacks", type: .lazyStacks),
        Feature(title: "LazyHGrid and LazyVGrid", type: .lazyGrid),
        Feature(title: "ForEach", type: .forEach),
        Feature(title: "Section", type: .section),
        Feature(title: "Group, GroupBox", type: .group),
        Feature(title: "Spacer and Frame", type: .spacer)
    ]
}
