//
//  Place.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 02/01/2023.
//

import SwiftUI

struct Place: Equatable {
    let id = UUID().uuidString
    let name: String
    let imageName: String
    let description: String
}
