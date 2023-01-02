//
//  LazyGridsViewModel.swift
//  SwiftUIQuickShot
//
//  Created by Piotr Sztefko on 02/01/2023.
//

import SwiftUI

final class LazyGridsViewModel: ObservableObject {
    @Published var vGridLayout = [
        GridItem(.flexible())
    ]
}
