//
//  ListView.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 29/12/2022.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = ListViewModel()
    var body: some View {
        VStack {
            topSection
                .scaledToFit()
            switch viewModel.state {
            case .defaultList:
                defaultList
            case .swipeActionsList:
                swipeActions
            case .style:
                styledList
            }
        }
    }
    
    func remove(at offset: IndexSet) {
        viewModel.places.remove(atOffsets: offset)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

private extension ListView {
    private var topSection: some View {
        HStack {
            Button {
                viewModel.state = .defaultList
            } label: {
                Text("Default")
            }
            Divider()
            Button {
                viewModel.state = .swipeActionsList
            } label: {
                Text("SwipeActions")
            }
            Divider()
            Button {
                viewModel.state = .style
            } label: {
                Text("Styles")
            }
        }
    }
    
    private var defaultList: some View {
        List {
            Toggle("Disable delete", isOn: $viewModel.isDeleteDisabled)
            ForEach(viewModel.places, id: \.id) { model in
                PlaceCell(place: model)
            }
            .onDelete(perform: remove)
            .deleteDisabled(viewModel.isDeleteDisabled)
        }
        .toolbar {
            if !viewModel.isDeleteDisabled {
                EditButton()
            }
        }
    }
    
    private var swipeActions: some View {
        List {
            ForEach(Array(viewModel.places.enumerated()), id: \.offset) { index, model in
                PlaceCell(place: model)
                    .swipeActions(edge: .leading) {
                        Button("Go there") { }
                            .tint(.purple)
                    }
                    .swipeActions(edge: .leading) {
                        Button("save") { }
                            .tint(.green)
                    }
                    .swipeActions(edge: .trailing) {
                        Button("flag") { }
                            .tint(.blue)
                    }
                    .swipeActions(edge: .trailing) {
                        Button("re-send") { }
                            .tint(.orange)
                    }
            }
        }
        .toolbar {
            if !viewModel.isDeleteDisabled {
                EditButton()
            }
        }
    }
    
    private var styledList: some View {
        StyledList()
    }
}
