//
//  Feature.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 30/12/2022.
//

import Foundation

struct Feature {
    let id = UUID().uuidString
    let title: String
    let type: FeatureType
}

enum FeatureType {
    case stacks
    case lazyStacks
    case lazyGrid
    case forEach
    case list
    case group
    case spacer
}
