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
            EmptyView()
        case .list:
            ListView()
        case .group:
            EmptyView()
        case .section:
            EmptyView()
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
