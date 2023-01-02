//
//  PlaceCell.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 02/01/2023.
//

import SwiftUI

struct PlaceCell: View {
    let place: Place
    
    
    
    var body: some View {
        HStack(alignment: .bottom){
            VStack {
                Image(place.imageName)
                    .cornerRadius(10, antialiased: true)
                Text(place.name)
            }
            .padding(.trailing, 5)
            Text(place.description)
                .font(.system(size: 12))
        }
        .padding(.horizontal, 5)
    }
}

struct PlaceCell_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCell(place: Place(name: "Bagno Shreka", imageName: "bagno", description: "Bagno jest dość ponurym miejscem. Nie ma wokół niego żadne roślinności poza krzewami. Na jego terenie znajduje się wiele bajorek z błotem, w których kąpie się Shrek."))
    }
}
