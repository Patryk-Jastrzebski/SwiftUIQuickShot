//
//  FeatureView.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 29/12/2022.
//

import SwiftUI

struct FeatureView: View {
    let featureType: FeatureType
    var body: some View {
        switch featureType {
        case .stacks:
            Stacks()
        case .lazyStacks:
            EmptyView()
        case .lazyGrid:
            LazyGrids()
        case .forEach:
            ForEachView()
        case .list:
            ListView()
        case .group:
            Groups()
        case .spacer:
            SpacerView()
        }
    }
}

struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureView(featureType: .list)
    }
}
