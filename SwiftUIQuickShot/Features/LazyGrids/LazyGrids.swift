//
//  LazyGrids.swift
//  SwiftUIQuickShot
//
//  Created by Piotr Sztefko on 30/12/2022.
//

import SwiftUI

struct LazyGrids: View {
    @StateObject var viewModel = LazyGridsViewModel()
    
    var body: some View {
        VStack {
            topSection
                .scaledToFit()
            Divider()
            Text("Number of elements: " + String(viewModel.vGridLayout.count))
            gridView
        }
    }
}

extension LazyGrids {
    private var topSection: some View {
        HStack {
            Button (action: {
                viewModel.vGridLayout.append(GridItem(.flexible()))
            }, label: {
                Text("Add flexible")
            })
            Divider()
            Button (action: {
                viewModel.vGridLayout.append(GridItem(.adaptive(minimum: 50), alignment: .bottomLeading))
            }, label: {
                Text("Add adaptive")
            })
            Divider()
            Button (action: {
                viewModel.vGridLayout.append(GridItem(.fixed(80), alignment: .bottomLeading))
            }, label: {
                Text("Add fixed")
            })
            Divider()
            Button (action: {
                viewModel.vGridLayout = [
                    GridItem(.flexible())
                ]
            }, label: {
                Text("Reset")
            })
        }
    }
    
    private var gridView: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.vGridLayout) {
                ForEach(0..<100) { value in
                    Rectangle()
                        .foregroundColor(Color.green)
                        .frame(height: 50)
                        .overlay(
                            Text("Item \(value + 1)").foregroundColor(.white)
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
