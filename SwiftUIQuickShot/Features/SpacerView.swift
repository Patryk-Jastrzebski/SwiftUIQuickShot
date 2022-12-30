//
//  SpacerView.swift
//  SwiftUIQuickShot
//
//  Created by Patryk Jastrzębski on 30/12/2022.
//

import SwiftUI

struct SpacerView: View {
    @State var isLoading: Bool = false
    
    var body: some View {
        // Prezentacja różnic paddingu, frame i spacera - oraz faktu że kolejność modifierów ma duże znaczenie
        VStack(spacing: 20) {
            toggleLoading
            paddingButton
            spacerButton
            frameButtonAll
            frameButtonNotAll
            frameButton
        }
        .foregroundColor(.white)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}

extension SpacerView {
    private var toggleLoading: some View {
        HStack {
            Toggle("isLoading", isOn: $isLoading)
        }
        .padding(.horizontal)
    }
    
    private var paddingButton: some View {
        Button {
            
        } label: {
            if isLoading {
                LoadingIndicator()
            } else {
                Text("Padding")
                
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 15)
        .background(.blue)
        .cornerRadius(10)
        .padding(.horizontal)
    }
    
    private var spacerButton: some View {
        Button {
            
        } label: {
            HStack {
                Spacer()
                if isLoading {
                    LoadingIndicator()
                } else {
                    Text("SpacerButton")
                }
                Spacer()
            }
            .padding(.vertical, 15)
            .background(.blue)
            .cornerRadius(10)
            .padding(.horizontal)
        }
    }
    
    private var frameButtonAll: some View {
        Button {
            
        } label: {
            Group {
                if isLoading {
                    LoadingIndicator()
                } else {
                    Text("FrameButton")
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(.red)
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
    
    private var frameButtonNotAll: some View {
        Button {
            
        } label: {
            Text("FrameButton")
                .frame(maxWidth: .infinity)
                .frame(height: 50)
        }
        .background(.red)
        .cornerRadius(10)
        .padding(.horizontal)
    }
    
    private var frameButton: some View {
        Button {
            
        } label: {
            Text("FrameButton")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(.red)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
