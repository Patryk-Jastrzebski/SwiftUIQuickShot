//
//  SpacingView.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 02/01/2023.
//

import SwiftUI

struct SpacingView: View {
    @State var isSpacerVisible = false
    var body: some View {
        VStack {
            Toggle("SpacerVisible", isOn: $isSpacerVisible)
                .padding(.horizontal)
            Text("Hello, World!")
            if isSpacerVisible {
                Spacer()
            }
        }
        .background(.gray.opacity(0.2))
        .animation(.default, value: isSpacerVisible)
    }
}

struct SpacingView_Previews: PreviewProvider {
    static var previews: some View {
        SpacingView()
    }
}
