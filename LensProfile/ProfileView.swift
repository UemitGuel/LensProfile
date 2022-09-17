//
//  ProfileView.swift
//  LensProfile
//
//  Created by Ümit Gül on 17.09.22.
//

import SwiftUI

struct ProfileView: View {
    @State var profile: ProfileQuery.Data.Profile = ProfileQuery.Data.Profile(id: "", isDefault: true, handle: "Loading", ownedBy: "Loading", stats: ProfileQuery.Data.Profile.Stat(totalFollowers: 2, totalFollowing: 2, totalPosts: 2, totalComments: 0, totalMirrors: 0, totalPublications: 2, totalCollects: 2))

    let url = URL(string: "https://lenster.xyz/u/cappuccino.lens")!

    @Binding var showProfile: Bool

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Spacer()
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 160)
                    .cornerRadius(24)
                    .background(
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 24, style: .circular)
                                .stroke(.white, lineWidth: 8)
                        }
                            .compositingGroup()
                    )
                Spacer()
            }

            VStack(alignment: .center) {
                Text(profile.name ?? "")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("@" + profile.handle)
                    .font(.headline)
                    .foregroundColor(Color("lightGray"))
            }
            .foregroundColor(Color("lightGray"))
            HStack {
                // TODO: add Link from Response
                Link(destination: URL(string: "https://www.youtube.com/channel/UClDE8sfhCkNWkrQx-R2ishw")!) {
                    Label("Website", systemImage: "network")
                }
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 1, height: 16)
                    .foregroundColor(.white)
                Link(destination: URL(string: "https://twitter.com/uemit_eth")!) {
                    Label("Twitter", image: "twitter")
                }
            }
            .padding(.horizontal)
            Text(profile.bio ?? "")
                .foregroundColor(Color("lightGray"))
                .multilineTextAlignment(.center)

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Followers")
                        Text(String(profile.stats.totalFollowers))
                    }
                    HStack {
                        Text("Following")
                        Text(String(profile.stats.totalFollowing))
                    }
                    HStack {
                        Text("Posts")
                        Text(String(profile.stats.totalPosts))
                    }
                    HStack {
                        Text("Comments")
                        Text(String(profile.stats.totalComments))
                    }
                }
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text("Mirrors")
                        Text(String(profile.stats.totalMirrors))
                    }
                    HStack {
                        Text("Publications")
                        Text(String(profile.stats.totalPublications))
                    }
                    HStack {
                        Text("Collects")
                        Text(String(profile.stats.totalCollects))
                    }
                }
            }
            .font(.headline)
            .foregroundColor(Color.white)
            .padding()
            .background(
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 24, style: .circular)
                        .stroke(.white, lineWidth: 4)
                }
                    .compositingGroup()
            )
            Spacer()
            ShareLink(item: url) {
                HStack {
                    Spacer()
                    Label("Share your profile", systemImage:  "square.and.arrow.up")
                    Spacer()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(24)
            }
            Button(role: .cancel) {
                showProfile.toggle()
            } label: {
                HStack {
                    Spacer()
                    Label("Find another profile", systemImage:  "magnifyingglass")
                    Spacer()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(24)
            }
            .padding(.bottom)



            //            Text(profile.picture?.asMediaSet?.original.url ?? "not found")
        }
        .padding()
        .padding(.top, 48)
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
