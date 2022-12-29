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
            EmptyView()
        case .forEach:
            EmptyView()
        case .list:
            EmptyView()
        case .group:
            EmptyView()
        case .section:
            EmptyView()
        case .spacer:
            EmptyView()
        }
    }
}

struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureView(featureType: .list)
    }
}
