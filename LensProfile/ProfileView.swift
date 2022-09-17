//
//  ProfileView.swift
//  LensProfile
//
//  Created by Ümit Gül on 17.09.22.
//

import SwiftUI

struct ProfileView: View {
    @State var profile: ProfileQuery.Data.Profile?

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(profile?.handle ?? "not found")
            Text(profile?.picture?.asMediaSet?.original.url ?? "Picture not found")
        }
        .padding()
        .onAppear {
            Network.shared.apollo.fetch(query: ProfileQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    print("Success! Result: \(graphQLResult.data?.profile)")
                    self.profile = (graphQLResult.data?.profile)!
                case .failure(let error):
                    print("Failure! Error: \(error)")
                }
            }
        }
    }
}
