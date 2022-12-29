//
//  Stacks.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 29/12/2022.
//

import SwiftUI

struct Stacks: View {
    enum StackState {
        case vstack, hstack, zstack
    }
    @State var vAlignment: HorizontalAlignment = .center
    @State var hAlignment: VerticalAlignment = .center
    @State var zAlignment: Alignment = .center
    
    @State var state: StackState = .vstack
    var body: some View {
        VStack {
            vStackView
            Spacer()
            verticalButtons
            hStackView
            Spacer()
            horizontalButtons
            zStackView
            Spacer()
            zButtons
        }
        
        .font(.system(size: 24, weight: .semibold))
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}

extension Stacks {
//    private var content: some View {
//        ZStack {
//            switch state {
//            case .vstack:
//                VStack {
//                    
//                }
//            case .hstack:
//                VStack {
//                    
//                }
//            case .zstack:
//                VStack {
//                    
//                }
//            }
//        }
//    }
    // test haha
    private var vStackView: some View {
        VStack(alignment: vAlignment) {
            Text("To jest HStack")
            Text("HStack")
            Text("HStack")
            Text("HStack")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple)
    }
    
    private var hStackView: some View {
        HStack(alignment: hAlignment) {
            Text("To jest HStack")
            Text("HStack")
            Text("HStack")
            Text("HStack")
        }
    }
    
    private var zStackView: some View {
        ZStack(alignment: zAlignment) {
            Text("To jest ZStack ale z długim tekstem na dwie linie")
            Text("ZStack")
            Text("ZStack")
            Text("ZStack")
        }
    }
    
    private var verticalButtons: some View {
        HStack(alignment: .center) {
            button(action: {vAlignment = .leading}, name: "leading")
            button(action: {vAlignment = .center}, name: "center")
            button(action: {vAlignment = .trailing}, name: "trailing")
        }
    }
    
    private var horizontalButtons: some View {
        HStack(alignment: .center) {
            button(action: {hAlignment = .top}, name: "top")
            button(action: {hAlignment = .center}, name: "center")
            button(action: {hAlignment = .bottom}, name: "bottom")
        }
    }
    
    private var zButtons: some View {
        VStack {
            HStack {
                button(action: {zAlignment = .topLeading}, name: "topLeading")
                button(action: {zAlignment = .top}, name: "top")
                button(action: {zAlignment = .topTrailing}, name: "topTrailing")
            }
            HStack {
                button(action: {zAlignment = .leading}, name: "leading")
                button(action: {zAlignment = .center}, name: "center")
                button(action: {zAlignment = .trailing}, name: "trailing")
            }
            HStack {
                button(action: {zAlignment = .bottomLeading}, name: "bottomLeading")
                button(action: {zAlignment = .bottom}, name: "bottom")
                button(action: {zAlignment = .bottomTrailing}, name: "bottomTrailing")
            }
        }
    }
    
    @ViewBuilder
    private func button(action: @escaping () -> Void, name: String) -> some View {
        Button {
            action()
        } label: {
            Text(name)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.vertical, 5)
                .background(.white)
                .cornerRadius(10)
        }
    }
}
