//
//  FeaturesList.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 28/12/2022.
//

import SwiftUI

struct FeaturesList: View {
    @StateObject var viewModel = FeaturesViewModel()
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.features, id: \.id) { feature in
                    NavigationLink {
                        FeatureView(featureType: feature.type)
                    } label: {
                        Text(feature.title)
                    }
                }
            }
        }
    }
}

struct FeaturesList_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesList()
    }
}
