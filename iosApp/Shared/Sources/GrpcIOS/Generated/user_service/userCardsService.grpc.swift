//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: user_service/userCardsService.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_UserService_CardService_V1_UserCardsPrivateAdminClient`, then call methods of this protocol to make API calls.
public protocol Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? { get }

  func cardDetails(
    _ request: Appelis_UserService_CardService_V1_CardDetailsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_CardService_V1_CardDetailsRequest, Appelis_UserService_CardService_V1_CardDetailsResponse>

  func cardUsers(
    _ request: Appelis_UserService_CardService_V1_CardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_CardService_V1_CardRequest, Appelis_UserService_CardService_V1_CardUsersResponse>

  func addCard(
    _ request: Appelis_UserService_CardService_V1_AddCardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_CardService_V1_AddCardRequest, Appelis_UserService_CardService_V1_AddCardResponse>

  func usersCards(
    _ request: Appelis_UserService_CardService_V1_UsersCardsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_CardService_V1_UsersCardsRequest, Appelis_UserService_CardService_V1_UsersCardsResponse>

  func deleteCards(
    _ request: Appelis_UserService_CardService_V1_DeleteCardRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_CardService_V1_DeleteCardRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

extension Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientProtocol {
  public var serviceName: String {
    return "appelis.userService.cardService.v1.UserCardsPrivateAdmin"
  }

  /// Get Card from database.
  ///
  /// - Parameters:
  ///   - request: Request to send to CardDetails.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cardDetails(
    _ request: Appelis_UserService_CardService_V1_CardDetailsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_CardService_V1_CardDetailsRequest, Appelis_UserService_CardService_V1_CardDetailsResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardDetails.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCardDetailsInterceptors() ?? []
    )
  }

  /// Simply query card from database. Then return users mapped to this card
  /// id_mobile_user is set returns one user, if id_mobile_user is not set returns all users of mapped company.
  ///
  /// - Parameters:
  ///   - request: Request to send to CardUsers.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cardUsers(
    _ request: Appelis_UserService_CardService_V1_CardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_CardService_V1_CardRequest, Appelis_UserService_CardService_V1_CardUsersResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardUsers.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCardUsersInterceptors() ?? []
    )
  }

  /// Should check if combination of projectId and identification exists.
  /// If yes updates data type, idCompany and idMobileUser;
  ///
  /// - Parameters:
  ///   - request: Request to send to AddCard.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func addCard(
    _ request: Appelis_UserService_CardService_V1_AddCardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_CardService_V1_AddCardRequest, Appelis_UserService_CardService_V1_AddCardResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.addCard.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAddCardInterceptors() ?? []
    )
  }

  /// Returns cards attached to user. If user have company will also return cards for company.
  ///
  /// - Parameters:
  ///   - request: Request to send to UsersCards.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func usersCards(
    _ request: Appelis_UserService_CardService_V1_UsersCardsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_CardService_V1_UsersCardsRequest, Appelis_UserService_CardService_V1_UsersCardsResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.usersCards.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUsersCardsInterceptors() ?? []
    )
  }

  /// Deletes Card from Db defined by ID
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteCards.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteCards(
    _ request: Appelis_UserService_CardService_V1_DeleteCardRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_CardService_V1_DeleteCardRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.deleteCards.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteCardsInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_UserService_CardService_V1_UserCardsPrivateAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_UserService_CardService_V1_UserCardsPrivateAdminNIOClient")
public final class Appelis_UserService_CardService_V1_UserCardsPrivateAdminClient: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.userService.cardService.v1.UserCardsPrivateAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_UserService_CardService_V1_UserCardsPrivateAdminNIOClient: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.userService.cardService.v1.UserCardsPrivateAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_UserService_CardService_V1_UserCardsPrivateAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? { get }

  func makeCardDetailsCall(
    _ request: Appelis_UserService_CardService_V1_CardDetailsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_CardDetailsRequest, Appelis_UserService_CardService_V1_CardDetailsResponse>

  func makeCardUsersCall(
    _ request: Appelis_UserService_CardService_V1_CardRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_CardRequest, Appelis_UserService_CardService_V1_CardUsersResponse>

  func makeAddCardCall(
    _ request: Appelis_UserService_CardService_V1_AddCardRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_AddCardRequest, Appelis_UserService_CardService_V1_AddCardResponse>

  func makeUsersCardsCall(
    _ request: Appelis_UserService_CardService_V1_UsersCardsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_UsersCardsRequest, Appelis_UserService_CardService_V1_UsersCardsResponse>

  func makeDeleteCardsCall(
    _ request: Appelis_UserService_CardService_V1_DeleteCardRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_DeleteCardRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_UserService_CardService_V1_UserCardsPrivateAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeCardDetailsCall(
    _ request: Appelis_UserService_CardService_V1_CardDetailsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_CardDetailsRequest, Appelis_UserService_CardService_V1_CardDetailsResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardDetails.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCardDetailsInterceptors() ?? []
    )
  }

  public func makeCardUsersCall(
    _ request: Appelis_UserService_CardService_V1_CardRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_CardRequest, Appelis_UserService_CardService_V1_CardUsersResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardUsers.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCardUsersInterceptors() ?? []
    )
  }

  public func makeAddCardCall(
    _ request: Appelis_UserService_CardService_V1_AddCardRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_AddCardRequest, Appelis_UserService_CardService_V1_AddCardResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.addCard.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAddCardInterceptors() ?? []
    )
  }

  public func makeUsersCardsCall(
    _ request: Appelis_UserService_CardService_V1_UsersCardsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_UsersCardsRequest, Appelis_UserService_CardService_V1_UsersCardsResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.usersCards.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUsersCardsInterceptors() ?? []
    )
  }

  public func makeDeleteCardsCall(
    _ request: Appelis_UserService_CardService_V1_DeleteCardRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_CardService_V1_DeleteCardRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.deleteCards.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteCardsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_UserService_CardService_V1_UserCardsPrivateAdminAsyncClientProtocol {
  public func cardDetails(
    _ request: Appelis_UserService_CardService_V1_CardDetailsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_CardService_V1_CardDetailsResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardDetails.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCardDetailsInterceptors() ?? []
    )
  }

  public func cardUsers(
    _ request: Appelis_UserService_CardService_V1_CardRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_CardService_V1_CardUsersResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardUsers.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCardUsersInterceptors() ?? []
    )
  }

  public func addCard(
    _ request: Appelis_UserService_CardService_V1_AddCardRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_CardService_V1_AddCardResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.addCard.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAddCardInterceptors() ?? []
    )
  }

  public func usersCards(
    _ request: Appelis_UserService_CardService_V1_UsersCardsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_CardService_V1_UsersCardsResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.usersCards.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUsersCardsInterceptors() ?? []
    )
  }

  public func deleteCards(
    _ request: Appelis_UserService_CardService_V1_DeleteCardRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.deleteCards.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteCardsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_UserService_CardService_V1_UserCardsPrivateAdminAsyncClient: Appelis_UserService_CardService_V1_UserCardsPrivateAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'cardDetails'.
  func makeCardDetailsInterceptors() -> [ClientInterceptor<Appelis_UserService_CardService_V1_CardDetailsRequest, Appelis_UserService_CardService_V1_CardDetailsResponse>]

  /// - Returns: Interceptors to use when invoking 'cardUsers'.
  func makeCardUsersInterceptors() -> [ClientInterceptor<Appelis_UserService_CardService_V1_CardRequest, Appelis_UserService_CardService_V1_CardUsersResponse>]

  /// - Returns: Interceptors to use when invoking 'addCard'.
  func makeAddCardInterceptors() -> [ClientInterceptor<Appelis_UserService_CardService_V1_AddCardRequest, Appelis_UserService_CardService_V1_AddCardResponse>]

  /// - Returns: Interceptors to use when invoking 'usersCards'.
  func makeUsersCardsInterceptors() -> [ClientInterceptor<Appelis_UserService_CardService_V1_UsersCardsRequest, Appelis_UserService_CardService_V1_UsersCardsResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteCards'.
  func makeDeleteCardsInterceptors() -> [ClientInterceptor<Appelis_UserService_CardService_V1_DeleteCardRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}

public enum Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "UserCardsPrivateAdmin",
    fullName: "appelis.userService.cardService.v1.UserCardsPrivateAdmin",
    methods: [
      Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardDetails,
      Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.cardUsers,
      Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.addCard,
      Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.usersCards,
      Appelis_UserService_CardService_V1_UserCardsPrivateAdminClientMetadata.Methods.deleteCards,
    ]
  )

  public enum Methods {
    public static let cardDetails = GRPCMethodDescriptor(
      name: "CardDetails",
      path: "/appelis.userService.cardService.v1.UserCardsPrivateAdmin/CardDetails",
      type: GRPCCallType.unary
    )

    public static let cardUsers = GRPCMethodDescriptor(
      name: "CardUsers",
      path: "/appelis.userService.cardService.v1.UserCardsPrivateAdmin/CardUsers",
      type: GRPCCallType.unary
    )

    public static let addCard = GRPCMethodDescriptor(
      name: "AddCard",
      path: "/appelis.userService.cardService.v1.UserCardsPrivateAdmin/AddCard",
      type: GRPCCallType.unary
    )

    public static let usersCards = GRPCMethodDescriptor(
      name: "UsersCards",
      path: "/appelis.userService.cardService.v1.UserCardsPrivateAdmin/UsersCards",
      type: GRPCCallType.unary
    )

    public static let deleteCards = GRPCMethodDescriptor(
      name: "DeleteCards",
      path: "/appelis.userService.cardService.v1.UserCardsPrivateAdmin/DeleteCards",
      type: GRPCCallType.unary
    )
  }
}

