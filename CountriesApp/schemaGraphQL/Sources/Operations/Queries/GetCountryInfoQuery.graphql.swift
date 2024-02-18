// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetCountryInfoQuery: GraphQLQuery {
  public static let operationName: String = "GetCountryInfo"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetCountryInfo($code: ID!) { country(code: $code) { __typename name capital emoji states { __typename name } } }"#
    ))

  public var code: ID

  public init(code: ID) {
    self.code = code
  }

  public var __variables: Variables? { ["code": code] }

  public struct Data: SchemaGraphQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SchemaGraphQL.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("country", Country?.self, arguments: ["code": .variable("code")]),
    ] }

    public var country: Country? { __data["country"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: SchemaGraphQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SchemaGraphQL.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("capital", String?.self),
        .field("emoji", String.self),
        .field("states", [State].self),
      ] }

      public var name: String { __data["name"] }
      public var capital: String? { __data["capital"] }
      public var emoji: String { __data["emoji"] }
      public var states: [State] { __data["states"] }

      /// Country.State
      ///
      /// Parent Type: `State`
      public struct State: SchemaGraphQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SchemaGraphQL.Objects.State }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String.self),
        ] }

        public var name: String { __data["name"] }
      }
    }
  }
}
