//
//  ForEachView.swift
//  SwiftUIQuickShot
//
//  Created by Piotr Sztefko on 03/01/2023.
//

import SwiftUI

struct ForEachView: View {
    @StateObject var viewModel = ForEachViewModel()
    
    var body: some View {
        VStack {
            topSection
            content
        }
    }
}

extension ForEachView {
    private var topSection: some View {
        HStack {
            ForEach(Examples.ExampleType.allCases, id: \.rawValue) { item in
                Button (action: {
                    viewModel.state = item
                }, label: {
                    Text(item.rawValue)
                })
                Divider()
                    .scaledToFit()
            }
        }
        .frame(height: 35)
    }
    
    private var content: some View {
        VStack {
            switch viewModel.state {
            case .numbers:
                numbersView
            case .fonts:
                fontsView
            case .colors:
                colorsView
            case .padding:
                paddingView
            case .sameId:
                sameId
            }
        }
        .frame(maxHeight: .infinity)
    }
    
    private var numbersView: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(1..<101) { index in
                    Text("Item \(index)")
                    Divider()
                }
                .padding()
            }
        }
    }
    
    private var fontsView: some View {
        ForEach(viewModel.namedFonts) { namedFont in
            Text(namedFont.name)
                .font(namedFont.font)
        }
    }
    
    private var colorsView: some View {
        ForEach(viewModel.colors, id: \.self) { color in
            Text(color.description.capitalized)
                .padding()
                .background(color)
        }
    }
    
    private var paddingView: some View {
        ForEach(viewModel.colors, id: \.self) { color in
            Text(color.description.capitalized)
                .background(color)
                .padding()
        }
    }
    
    private var sameId: some View {
        ScrollView(showsIndicators: false) {
            ForEach(viewModel.exampleIds) { item in
                HStack {
                    Spacer()
                    Text(String(item.title))
                    Spacer()
                }
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
