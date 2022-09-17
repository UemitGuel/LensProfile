// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class ProfileQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Profile {
      profile(request: {handle: "cappuccino.lens"}) {
        __typename
        id
        name
        handle
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
          GraphQLField("handle", type: .nonNull(.scalar(String.self))),
          GraphQLField("stats", type: .nonNull(.object(Stat.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, handle: String, stats: Stat) {
        self.init(unsafeResultMap: ["__typename": "Profile", "id": id, "name": name, "handle": handle, "stats": stats.resultMap])
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

      /// The profile handle
      public var handle: String {
        get {
          return resultMap["handle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "handle")
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
    }
  }
}
