//
//  StyledList.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 03/01/2023.
//

import SwiftUI

enum StyleState {
    case sidebar, plain, insetGrouped, inset, grouped, automatic
}

struct StyledList: View {
    let place = Place(name: "Bagienko", imageName: "bagno", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
    
    @State private var styleState: any ListStyle = .inset
    
    var body: some View {
        VStack {
            topSection
            AnyView(
                List {
                    Section("Polska") {
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                    }
                    Section("Siedmiogród") {
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                    }
                    Section("Watykan") {
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                    }
                    Section("Honolulu") {
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                        PlaceCell(place: place)
                    }
                }
                    .listStyle(styleState)
            )
        }
    }
}

struct StyledList_Previews: PreviewProvider {
    static var previews: some View {
        StyledList()
    }
}

extension StyledList {
    private var topSection: some View {
        HStack {
            Divider()
            selectButton(.plain, name: "plain")
            selectButton(.sidebar, name: "sidebar")
            selectButton(.insetGrouped, name: "insetGrouped")
            selectButton(.grouped, name: "grouped")
            selectButton(.inset, name: "inset")
            selectButton(.automatic, name: "auto")
        }
        .font(.caption)
        .frame(height: 40)
    }
    
    @ViewBuilder func selectButton(_ style: any ListStyle, name: String) -> some View {
        HStack {
            Button {
                self.styleState = style
            } label: {
                Text(name)
            }
            Divider()
        }
    }
}
