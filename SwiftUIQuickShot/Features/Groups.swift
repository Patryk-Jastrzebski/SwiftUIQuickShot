//
//  Groups.swift
//  SwiftUIQuickShot
//
//  Created by Piotr Sztefko on 04/01/2023.
//

import SwiftUI

struct Groups: View {
    @State private var showGroup = false
    @State private var boxGroup = false
    
    var body: some View {
        VStack {
            topSection
            if showGroup {
                if boxGroup {
                    boxGroups
                } else {
                    group
                }
            } else {
                separate
            }
        }
        .onChange(of: showGroup, perform: { _ in
            if !showGroup {
                boxGroup = false
            }
        })
    }
}

extension Groups {
    private var topSection: some View {
        HStack {
            Toggle(isOn: $showGroup) {}
                .labelsHidden()
                .rotationEffect(.degrees(showGroup ? -90 : 90))
                .animation(.default, value: showGroup)
            Toggle(isOn: $boxGroup) {}
                .labelsHidden()
                .rotationEffect(.degrees(boxGroup ? -90 : 90))
                .animation(.default, value: boxGroup)
        }
    }
    
    private var group: some View {
        VStack {
            Text("Group")
                .font(.system(size: 32))
            Group {
                Image(systemName: "pencil")
                Image(systemName: "scribble")
                Image(systemName: "lasso")
                Image(systemName: "folder")
                Image(systemName: "paperplane")
                Image(systemName: "doc")
                Image(systemName: "terminal")
            }
            .font(.system(size: 50))
            .foregroundColor(.black)
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity)
    }
    
    private var separate: some View {
        VStack {
            Text("Separate")
                .font(.system(size: 32))
            Image(systemName: "pencil")
                .font(.system(size: 50))
                .foregroundColor(.black)
            Image(systemName: "scribble")
                .font(.system(size: 50))
                .foregroundColor(.black)
            Image(systemName: "lasso")
                .font(.system(size: 50))
                .foregroundColor(.black)
            Image(systemName: "folder")
                .font(.system(size: 50))
                .foregroundColor(.black)
            Image(systemName: "paperplane")
                .font(.system(size: 50))
                .foregroundColor(.black)
            Image(systemName: "doc")
                .font(.system(size: 50))
                .foregroundColor(.black)
            Image(systemName: "terminal")
                .font(.system(size: 50))
                .foregroundColor(.black)
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity)
    }
    
    private var boxGroups: some View {
        VStack {
            Text("GroupBox")
                .font(.system(size: 32))
            GroupBox {
                Image(systemName: "pencil")
                Image(systemName: "scribble")
                GroupBox {
                    Image(systemName: "lasso")
                    
                    GroupBox {
                        Image(systemName: "folder")
                        Image(systemName: "paperplane")
                        
                    }
                    Image(systemName: "doc")
                }
                Image(systemName: "terminal")
            }
            .font(.system(size: 50))
            .foregroundColor(.black)
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity)
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups()
    }
}
