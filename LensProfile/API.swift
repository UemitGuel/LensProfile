// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// The follow module types
public enum FollowModules: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case feeFollowModule
  case revertFollowModule
  case profileFollowModule
  case unknownFollowModule
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FeeFollowModule": self = .feeFollowModule
      case "RevertFollowModule": self = .revertFollowModule
      case "ProfileFollowModule": self = .profileFollowModule
      case "UnknownFollowModule": self = .unknownFollowModule
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .feeFollowModule: return "FeeFollowModule"
      case .revertFollowModule: return "RevertFollowModule"
      case .profileFollowModule: return "ProfileFollowModule"
      case .unknownFollowModule: return "UnknownFollowModule"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: FollowModules, rhs: FollowModules) -> Bool {
    switch (lhs, rhs) {
      case (.feeFollowModule, .feeFollowModule): return true
      case (.revertFollowModule, .revertFollowModule): return true
      case (.profileFollowModule, .profileFollowModule): return true
      case (.unknownFollowModule, .unknownFollowModule): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [FollowModules] {
    return [
      .feeFollowModule,
      .revertFollowModule,
      .profileFollowModule,
      .unknownFollowModule,
    ]
  }
}

public final class ProfileQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Profile {
      profile(request: {handle: "cappuccino.lens"}) {
        __typename
        id
        name
        bio
        attributes {
          __typename
          displayType
          traitType
          key
          value
        }
        followNftAddress
        metadata
        isDefault
        picture {
          __typename
          ... on NftImage {
            __typename
            contractAddress
            tokenId
            uri
            verified
          }
          ... on MediaSet {
            __typename
            original {
              __typename
              url
              mimeType
            }
          }
        }
        handle
        coverPicture {
          __typename
          ... on NftImage {
            __typename
            contractAddress
            tokenId
            uri
            verified
          }
          ... on MediaSet {
            __typename
            original {
              __typename
              url
              mimeType
            }
          }
        }
        ownedBy
        dispatcher {
          __typename
          address
          canUseRelay
        }
        stats {
          __typename
          totalFollowers
          totalFollowing
          totalPosts
          totalComments
          totalMirrors
          totalPublications
          totalCollects
        }
        followModule {
          __typename
          ... on FeeFollowModuleSettings {
            __typename
            type
            amount {
              __typename
              asset {
                __typename
                symbol
                name
                decimals
                address
              }
              value
            }
            recipient
          }
          ... on ProfileFollowModuleSettings {
            __typename
            type
          }
          ... on RevertFollowModuleSettings {
            __typename
            type
          }
        }
      }
    }
    """

  public let operationName: String = "Profile"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("profile", arguments: ["request": ["handle": "cappuccino.lens"]], type: .object(Profile.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(profile: Profile? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "profile": profile.flatMap { (value: Profile) -> ResultMap in value.resultMap }])
    }

    public var profile: Profile? {
      get {
        return (resultMap["profile"] as? ResultMap).flatMap { Profile(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "profile")
      }
    }

    public struct Profile: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Profile"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("bio", type: .scalar(String.self)),
          GraphQLField("attributes", type: .list(.nonNull(.object(Attribute.selections)))),
          GraphQLField("followNftAddress", type: .scalar(String.self)),
          GraphQLField("metadata", type: .scalar(String.self)),
          GraphQLField("isDefault", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("picture", type: .object(Picture.selections)),
          GraphQLField("handle", type: .nonNull(.scalar(String.self))),
          GraphQLField("coverPicture", type: .object(CoverPicture.selections)),
          GraphQLField("ownedBy", type: .nonNull(.scalar(String.self))),
          GraphQLField("dispatcher", type: .object(Dispatcher.selections)),
          GraphQLField("stats", type: .nonNull(.object(Stat.selections))),
          GraphQLField("followModule", type: .object(FollowModule.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, bio: String? = nil, attributes: [Attribute]? = nil, followNftAddress: String? = nil, metadata: String? = nil, isDefault: Bool, picture: Picture? = nil, handle: String, coverPicture: CoverPicture? = nil, ownedBy: String, dispatcher: Dispatcher? = nil, stats: Stat, followModule: FollowModule? = nil) {
        self.init(unsafeResultMap: ["__typename": "Profile", "id": id, "name": name, "bio": bio, "attributes": attributes.flatMap { (value: [Attribute]) -> [ResultMap] in value.map { (value: Attribute) -> ResultMap in value.resultMap } }, "followNftAddress": followNftAddress, "metadata": metadata, "isDefault": isDefault, "picture": picture.flatMap { (value: Picture) -> ResultMap in value.resultMap }, "handle": handle, "coverPicture": coverPicture.flatMap { (value: CoverPicture) -> ResultMap in value.resultMap }, "ownedBy": ownedBy, "dispatcher": dispatcher.flatMap { (value: Dispatcher) -> ResultMap in value.resultMap }, "stats": stats.resultMap, "followModule": followModule.flatMap { (value: FollowModule) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The profile id
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// Name of the profile
      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// Bio of the profile
      public var bio: String? {
        get {
          return resultMap["bio"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "bio")
        }
      }

      /// Optionals param to add extra attributes on the metadata
      public var attributes: [Attribute]? {
        get {
          return (resultMap["attributes"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Attribute] in value.map { (value: ResultMap) -> Attribute in Attribute(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Attribute]) -> [ResultMap] in value.map { (value: Attribute) -> ResultMap in value.resultMap } }, forKey: "attributes")
        }
      }

      /// Follow nft address
      public var followNftAddress: String? {
        get {
          return resultMap["followNftAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "followNftAddress")
        }
      }

      /// Metadata url
      public var metadata: String? {
        get {
          return resultMap["metadata"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "metadata")
        }
      }

      /// Is the profile default
      public var isDefault: Bool {
        get {
          return resultMap["isDefault"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDefault")
        }
      }

      /// The picture for the profile
      public var picture: Picture? {
        get {
          return (resultMap["picture"] as? ResultMap).flatMap { Picture(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "picture")
        }
      }

      /// The profile handle
      public var handle: String {
        get {
          return resultMap["handle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "handle")
        }
      }

      /// The cover picture for the profile
      public var coverPicture: CoverPicture? {
        get {
          return (resultMap["coverPicture"] as? ResultMap).flatMap { CoverPicture(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "coverPicture")
        }
      }

      /// Who owns the profile
      public var ownedBy: String {
        get {
          return resultMap["ownedBy"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ownedBy")
        }
      }

      /// The dispatcher
      public var dispatcher: Dispatcher? {
        get {
          return (resultMap["dispatcher"] as? ResultMap).flatMap { Dispatcher(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "dispatcher")
        }
      }

      /// Profile stats
      public var stats: Stat {
        get {
          return Stat(unsafeResultMap: resultMap["stats"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "stats")
        }
      }

      /// The follow module
      public var followModule: FollowModule? {
        get {
          return (resultMap["followModule"] as? ResultMap).flatMap { FollowModule(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "followModule")
        }
      }

      public struct Attribute: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Attribute"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("displayType", type: .scalar(String.self)),
            GraphQLField("traitType", type: .scalar(String.self)),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("value", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(displayType: String? = nil, traitType: String? = nil, key: String, value: String) {
          self.init(unsafeResultMap: ["__typename": "Attribute", "displayType": displayType, "traitType": traitType, "key": key, "value": value])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The display type
        public var displayType: String? {
          get {
            return resultMap["displayType"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayType")
          }
        }

        /// The trait type - can be anything its the name it will render so include spaces
        public var traitType: String? {
          get {
            return resultMap["traitType"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "traitType")
          }
        }

        /// identifier of this attribute, we will update by this id
        public var key: String {
          get {
            return resultMap["key"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "key")
          }
        }

        /// Value attribute
        public var value: String {
          get {
            return resultMap["value"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }
      }

      public struct Picture: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["NftImage", "MediaSet"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["NftImage": AsNftImage.selections, "MediaSet": AsMediaSet.selections],
              default: [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              ]
            )
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeNftImage(contractAddress: String, tokenId: String, uri: String, verified: Bool) -> Picture {
          return Picture(unsafeResultMap: ["__typename": "NftImage", "contractAddress": contractAddress, "tokenId": tokenId, "uri": uri, "verified": verified])
        }

        public static func makeMediaSet(original: AsMediaSet.Original) -> Picture {
          return Picture(unsafeResultMap: ["__typename": "MediaSet", "original": original.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asNftImage: AsNftImage? {
          get {
            if !AsNftImage.possibleTypes.contains(__typename) { return nil }
            return AsNftImage(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsNftImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["NftImage"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("contractAddress", type: .nonNull(.scalar(String.self))),
              GraphQLField("tokenId", type: .nonNull(.scalar(String.self))),
              GraphQLField("uri", type: .nonNull(.scalar(String.self))),
              GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(contractAddress: String, tokenId: String, uri: String, verified: Bool) {
            self.init(unsafeResultMap: ["__typename": "NftImage", "contractAddress": contractAddress, "tokenId": tokenId, "uri": uri, "verified": verified])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The contract address
          public var contractAddress: String {
            get {
              return resultMap["contractAddress"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "contractAddress")
            }
          }

          /// The token id of the nft
          public var tokenId: String {
            get {
              return resultMap["tokenId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "tokenId")
            }
          }

          /// The token image nft
          public var uri: String {
            get {
              return resultMap["uri"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "uri")
            }
          }

          /// If the NFT is verified
          public var verified: Bool {
            get {
              return resultMap["verified"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "verified")
            }
          }
        }

        public var asMediaSet: AsMediaSet? {
          get {
            if !AsMediaSet.possibleTypes.contains(__typename) { return nil }
            return AsMediaSet(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsMediaSet: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaSet"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("original", type: .nonNull(.object(Original.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(original: Original) {
            self.init(unsafeResultMap: ["__typename": "MediaSet", "original": original.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Original media
          public var original: Original {
            get {
              return Original(unsafeResultMap: resultMap["original"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "original")
            }
          }

          public struct Original: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Media"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
                GraphQLField("mimeType", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(url: String, mimeType: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "Media", "url": url, "mimeType": mimeType])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The token image nft
            public var url: String {
              get {
                return resultMap["url"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }

            /// The image/audio/video mime type for the publication
            public var mimeType: String? {
              get {
                return resultMap["mimeType"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "mimeType")
              }
            }
          }
        }
      }

      public struct CoverPicture: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["NftImage", "MediaSet"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["NftImage": AsNftImage.selections, "MediaSet": AsMediaSet.selections],
              default: [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              ]
            )
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeNftImage(contractAddress: String, tokenId: String, uri: String, verified: Bool) -> CoverPicture {
          return CoverPicture(unsafeResultMap: ["__typename": "NftImage", "contractAddress": contractAddress, "tokenId": tokenId, "uri": uri, "verified": verified])
        }

        public static func makeMediaSet(original: AsMediaSet.Original) -> CoverPicture {
          return CoverPicture(unsafeResultMap: ["__typename": "MediaSet", "original": original.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asNftImage: AsNftImage? {
          get {
            if !AsNftImage.possibleTypes.contains(__typename) { return nil }
            return AsNftImage(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsNftImage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["NftImage"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("contractAddress", type: .nonNull(.scalar(String.self))),
              GraphQLField("tokenId", type: .nonNull(.scalar(String.self))),
              GraphQLField("uri", type: .nonNull(.scalar(String.self))),
              GraphQLField("verified", type: .nonNull(.scalar(Bool.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(contractAddress: String, tokenId: String, uri: String, verified: Bool) {
            self.init(unsafeResultMap: ["__typename": "NftImage", "contractAddress": contractAddress, "tokenId": tokenId, "uri": uri, "verified": verified])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The contract address
          public var contractAddress: String {
            get {
              return resultMap["contractAddress"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "contractAddress")
            }
          }

          /// The token id of the nft
          public var tokenId: String {
            get {
              return resultMap["tokenId"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "tokenId")
            }
          }

          /// The token image nft
          public var uri: String {
            get {
              return resultMap["uri"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "uri")
            }
          }

          /// If the NFT is verified
          public var verified: Bool {
            get {
              return resultMap["verified"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "verified")
            }
          }
        }

        public var asMediaSet: AsMediaSet? {
          get {
            if !AsMediaSet.possibleTypes.contains(__typename) { return nil }
            return AsMediaSet(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsMediaSet: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaSet"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("original", type: .nonNull(.object(Original.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(original: Original) {
            self.init(unsafeResultMap: ["__typename": "MediaSet", "original": original.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Original media
          public var original: Original {
            get {
              return Original(unsafeResultMap: resultMap["original"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "original")
            }
          }

          public struct Original: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Media"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
                GraphQLField("mimeType", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(url: String, mimeType: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "Media", "url": url, "mimeType": mimeType])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The token image nft
            public var url: String {
              get {
                return resultMap["url"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }

            /// The image/audio/video mime type for the publication
            public var mimeType: String? {
              get {
                return resultMap["mimeType"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "mimeType")
              }
            }
          }
        }
      }

      public struct Dispatcher: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Dispatcher"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("address", type: .nonNull(.scalar(String.self))),
            GraphQLField("canUseRelay", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(address: String, canUseRelay: Bool) {
          self.init(unsafeResultMap: ["__typename": "Dispatcher", "address": address, "canUseRelay": canUseRelay])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The dispatcher address
        public var address: String {
          get {
            return resultMap["address"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "address")
          }
        }

        /// If the dispatcher can use the relay
        public var canUseRelay: Bool {
          get {
            return resultMap["canUseRelay"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "canUseRelay")
          }
        }
      }

      public struct Stat: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ProfileStats"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("totalFollowers", type: .nonNull(.scalar(Int.self))),
            GraphQLField("totalFollowing", type: .nonNull(.scalar(Int.self))),
            GraphQLField("totalPosts", type: .nonNull(.scalar(Int.self))),
            GraphQLField("totalComments", type: .nonNull(.scalar(Int.self))),
            GraphQLField("totalMirrors", type: .nonNull(.scalar(Int.self))),
            GraphQLField("totalPublications", type: .nonNull(.scalar(Int.self))),
            GraphQLField("totalCollects", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalFollowers: Int, totalFollowing: Int, totalPosts: Int, totalComments: Int, totalMirrors: Int, totalPublications: Int, totalCollects: Int) {
          self.init(unsafeResultMap: ["__typename": "ProfileStats", "totalFollowers": totalFollowers, "totalFollowing": totalFollowing, "totalPosts": totalPosts, "totalComments": totalComments, "totalMirrors": totalMirrors, "totalPublications": totalPublications, "totalCollects": totalCollects])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Total follower count
        public var totalFollowers: Int {
          get {
            return resultMap["totalFollowers"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalFollowers")
          }
        }

        /// Total following count (remember the wallet follows not profile so will be same for every profile they own)
        public var totalFollowing: Int {
          get {
            return resultMap["totalFollowing"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalFollowing")
          }
        }

        /// Total post count
        public var totalPosts: Int {
          get {
            return resultMap["totalPosts"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPosts")
          }
        }

        /// Total comment count
        public var totalComments: Int {
          get {
            return resultMap["totalComments"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalComments")
          }
        }

        /// Total mirror count
        public var totalMirrors: Int {
          get {
            return resultMap["totalMirrors"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalMirrors")
          }
        }

        /// Total publication count
        public var totalPublications: Int {
          get {
            return resultMap["totalPublications"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalPublications")
          }
        }

        /// Total collects count
        public var totalCollects: Int {
          get {
            return resultMap["totalCollects"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCollects")
          }
        }
      }

      public struct FollowModule: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FeeFollowModuleSettings", "ProfileFollowModuleSettings", "RevertFollowModuleSettings", "UnknownFollowModuleSettings"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["FeeFollowModuleSettings": AsFeeFollowModuleSettings.selections, "ProfileFollowModuleSettings": AsProfileFollowModuleSettings.selections, "RevertFollowModuleSettings": AsRevertFollowModuleSettings.selections],
              default: [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              ]
            )
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeUnknownFollowModuleSettings() -> FollowModule {
          return FollowModule(unsafeResultMap: ["__typename": "UnknownFollowModuleSettings"])
        }

        public static func makeFeeFollowModuleSettings(type: FollowModules, amount: AsFeeFollowModuleSettings.Amount, recipient: String) -> FollowModule {
          return FollowModule(unsafeResultMap: ["__typename": "FeeFollowModuleSettings", "type": type, "amount": amount.resultMap, "recipient": recipient])
        }

        public static func makeProfileFollowModuleSettings(type: FollowModules) -> FollowModule {
          return FollowModule(unsafeResultMap: ["__typename": "ProfileFollowModuleSettings", "type": type])
        }

        public static func makeRevertFollowModuleSettings(type: FollowModules) -> FollowModule {
          return FollowModule(unsafeResultMap: ["__typename": "RevertFollowModuleSettings", "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asFeeFollowModuleSettings: AsFeeFollowModuleSettings? {
          get {
            if !AsFeeFollowModuleSettings.possibleTypes.contains(__typename) { return nil }
            return AsFeeFollowModuleSettings(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsFeeFollowModuleSettings: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["FeeFollowModuleSettings"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .nonNull(.scalar(FollowModules.self))),
              GraphQLField("amount", type: .nonNull(.object(Amount.selections))),
              GraphQLField("recipient", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: FollowModules, amount: Amount, recipient: String) {
            self.init(unsafeResultMap: ["__typename": "FeeFollowModuleSettings", "type": type, "amount": amount.resultMap, "recipient": recipient])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The follow modules enum
          public var type: FollowModules {
            get {
              return resultMap["type"]! as! FollowModules
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// The collect module amount info
          public var amount: Amount {
            get {
              return Amount(unsafeResultMap: resultMap["amount"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "amount")
            }
          }

          /// The collect module recipient address
          public var recipient: String {
            get {
              return resultMap["recipient"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "recipient")
            }
          }

          public struct Amount: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ModuleFeeAmount"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("asset", type: .nonNull(.object(Asset.selections))),
                GraphQLField("value", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(asset: Asset, value: String) {
              self.init(unsafeResultMap: ["__typename": "ModuleFeeAmount", "asset": asset.resultMap, "value": value])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The erc20 token info
            public var asset: Asset {
              get {
                return Asset(unsafeResultMap: resultMap["asset"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "asset")
              }
            }

            /// Floating point number as string (e.g. 42.009837). It could have the entire precision of the Asset or be truncated to the last significant decimal.
            public var value: String {
              get {
                return resultMap["value"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "value")
              }
            }

            public struct Asset: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Erc20"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("symbol", type: .nonNull(.scalar(String.self))),
                  GraphQLField("name", type: .nonNull(.scalar(String.self))),
                  GraphQLField("decimals", type: .nonNull(.scalar(Int.self))),
                  GraphQLField("address", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(symbol: String, name: String, decimals: Int, address: String) {
                self.init(unsafeResultMap: ["__typename": "Erc20", "symbol": symbol, "name": name, "decimals": decimals, "address": address])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Symbol for the token
              public var symbol: String {
                get {
                  return resultMap["symbol"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "symbol")
                }
              }

              /// Name of the symbol
              public var name: String {
                get {
                  return resultMap["name"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }

              /// Decimal places for the token
              public var decimals: Int {
                get {
                  return resultMap["decimals"]! as! Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "decimals")
                }
              }

              /// The erc20 address
              public var address: String {
                get {
                  return resultMap["address"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "address")
                }
              }
            }
          }
        }

        public var asProfileFollowModuleSettings: AsProfileFollowModuleSettings? {
          get {
            if !AsProfileFollowModuleSettings.possibleTypes.contains(__typename) { return nil }
            return AsProfileFollowModuleSettings(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsProfileFollowModuleSettings: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProfileFollowModuleSettings"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .nonNull(.scalar(FollowModules.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: FollowModules) {
            self.init(unsafeResultMap: ["__typename": "ProfileFollowModuleSettings", "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The follow module enum
          public var type: FollowModules {
            get {
              return resultMap["type"]! as! FollowModules
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }
        }

        public var asRevertFollowModuleSettings: AsRevertFollowModuleSettings? {
          get {
            if !AsRevertFollowModuleSettings.possibleTypes.contains(__typename) { return nil }
            return AsRevertFollowModuleSettings(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsRevertFollowModuleSettings: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["RevertFollowModuleSettings"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .nonNull(.scalar(FollowModules.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: FollowModules) {
            self.init(unsafeResultMap: ["__typename": "RevertFollowModuleSettings", "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The follow module enum
          public var type: FollowModules {
            get {
              return resultMap["type"]! as! FollowModules
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }
        }
      }
    }
  }
}
