//
//  ProfileView.swift
//  LensProfile
//
//  Created by Ümit Gül on 17.09.22.
//

import SwiftUI

struct ProfileView: View {
    @State var profile: ProfileQuery.Data.Profile = ProfileQuery.Data.Profile(id: "", handle: "", stats: ProfileQuery.Data.Profile.Stat(totalFollowers: 1, totalFollowing: 2, totalPosts: 3, totalComments: 4, totalMirrors: 5, totalPublications: 6, totalCollects: 7))

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(profile.handle)
        }
        .padding()
        .onAppear {
            Network.shared.apollo.fetch(query: ProfileQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    print("Success! Result: \(graphQLResult.data?.profile)")
                    profile = (graphQLResult.data?.profile)!
                case .failure(let error):
                    print("Failure! Error: \(error)")
                }
            }
        }
    }
}
