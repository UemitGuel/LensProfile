# Lens Pocket 

Build during ETHBerlin in 2022, this is my first attempt of integrating the Lens Protocoll nativly on iOS platforms.

Having fast access to your lens profile on iOS and Apple platforms to see the latest numbers regarding your account and share it quickly with friends and family.

Quick Intro Video: 
https://www.loom.com/share/deb2557ba54a407fb958f18216ac4704

## Techstack 

- Lens GraphQL APIs (Mainnet: https://api.lens.dev)
- SwiftUI
- Infura IPFS Service

## Future Improvements

- Integration as a **Widget**, so the user can see the latest post on any given platform or have a quick glimse on the homescreen about the reactions
- Integration into **Apple Wallet** for quick access and sharing via QR-Code

## Challenges I ran into

Lens GraphQL, combined with iOS Platforms and the Apollo Client, was quite challenging initially for me. This was the first time I worked with GraphQL, and the integration into Swift and Xcode seemed limited. Another interesting challenge was setting up the Infura IPFS Service to route ipfs addresses and show the profile images in the App.
