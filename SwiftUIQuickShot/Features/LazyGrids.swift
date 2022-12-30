//
//  LazyGrids.swift
//  SwiftUIQuickShot
//
//  Created by Piotr Sztefko on 30/12/2022.
//

import SwiftUI

struct LazyGrids: View {
    var vGridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        gridView
    }
}

extension LazyGrids {
    private var gridView: some View {
        ScrollView {
            LazyVGrid(columns: vGridLayout) {
                ForEach(0..<100) { value in
                    Rectangle()
                        .foregroundColor(Color.green)
                        .frame(height: 50)
                        .overlay(
                            Text("\(value)").foregroundColor(.white)
                        )
                }
            }.padding(.all, 10)
        }
    }
}

struct LazyGrids_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrids()
    }
}
