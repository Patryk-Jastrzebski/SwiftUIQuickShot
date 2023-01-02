//
//  ListViewModel.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 02/01/2023.
//

import SwiftUI

final class ListViewModel: ObservableObject {
    enum State {
        case defaultList, swipeActionsList
    }
    
    @Published var state: State = .defaultList
    @Published var places: [Place] = [
        Place(name: "Bagno Shreka1", imageName: "bagno", description: "Bagno jest dość ponurym miejscem. Nie ma wokół niego żadne roślinności poza krzewami. Na jego terenie znajduje się wiele bajorek z błotem, w których kąpie się Shrek."),
        Place(name: "Bagno Shreka2", imageName: "bagno", description: "Bagno jest dość ponurym miejscem. Nie ma wokół niego żadne roślinności poza krzewami. Na jego terenie znajduje się wiele bajorek z błotem, w których kąpie się Shrek."),
        Place(name: "Bagno Shreka3", imageName: "bagno", description: "Bagno jest dość ponurym miejscem. Nie ma wokół niego żadne roślinności poza krzewami. Na jego terenie znajduje się wiele bajorek z błotem, w których kąpie się Shrek."),
        Place(name: "Bagno Shreka4", imageName: "bagno", description: "Bagno jest dość ponurym miejscem. Nie ma wokół niego żadne roślinności poza krzewami. Na jego terenie znajduje się wiele bajorek z błotem, w których kąpie się Shrek."),
        Place(name: "Bagno Shreka5", imageName: "bagno", description: "Bagno jest dość ponurym miejscem. Nie ma wokół niego żadne roślinności poza krzewami. Na jego terenie znajduje się wiele bajorek z błotem, w których kąpie się Shrek.")
    ]
    
    @Published var isDeleteDisabled = false
}
