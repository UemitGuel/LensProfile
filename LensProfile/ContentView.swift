//
//  ContentView.swift
//  LensProfile
//
//  Created by Ümit Gül on 16.09.22.
//

import SwiftUI

struct ContentView: View {

    @State private var handle: String = ""

    @State var showProfile: Bool = false

    var body: some View {
        ZStack {
            if !showProfile {
                Color("dunkelgrün")
                VStack {
                    Image("lensLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding(.vertical, 48)
                    Text("Enter your Lens Handle")
                        .font(.headline)
                        .foregroundColor(.white)
                    TextField(
                        "",
                        text: $handle
                    )
                    .autocorrectionDisabled()
                    .padding(8)
                    .frame(height: 52)
                    .background(
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8, style: .circular)
                                .stroke(.white, lineWidth: 2)
                        }
                        .compositingGroup()
                    )
                    .submitLabel(.search)
                    .onSubmit {
                        showProfile.toggle()
                    }
                    .padding(.bottom, 48)
                    AsyncButton {
                        withAnimation {
                            showProfile.toggle()
                        }
                    } label: {
                        HStack {
                            Spacer()
                            Text("Setup Profile")
                                .foregroundColor(Color("dunkelgrün"))
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color("dunkelgrün"))
                            Spacer()
                        }
                        .frame(height: 48)
                        .background(.white)
                        .cornerRadius(16)
                    }
                    .padding(.bottom,24)
                    Spacer()
                }
                .padding()
            } else if showProfile == true {
                Color("lightGray")
                VStack {
                    ProfileView()
                }
            }
        }
        .ignoresSafeArea()
    }
}
