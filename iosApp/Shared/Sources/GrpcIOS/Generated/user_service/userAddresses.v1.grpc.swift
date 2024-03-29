//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: user_service/userAddresses.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Service will be checking user id in token. if user id won't be found in token, service will return empty reponses.
///
/// Usage: instantiate `Appelis_UserService_Address_V1_UserAddressesClient`, then call methods of this protocol to make API calls.
public protocol Appelis_UserService_Address_V1_UserAddressesClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? { get }

  func getAllAddresses(
    _ request: Appelis_UserService_Address_V1_GetAllAddressesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Address_V1_GetAllAddressesRequest, Appelis_UserService_Address_V1_GetAllAddressesResponse>

  func setAddress(
    _ request: Appelis_UserService_Address_V1_SetAddressRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Address_V1_SetAddressRequest, Appelis_UserService_Address_V1_SetAddressResponse>

  func deleteAddress(
    _ request: Appelis_UserService_Address_V1_DeleteAddressRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Address_V1_DeleteAddressRequest, Appelis_UserService_Address_V1_DeleteAddressResponse>

  func getUserDefaults(
    _ request: Appelis_UserService_Address_V1_GetUserDefaultsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Address_V1_GetUserDefaultsRequest, Appelis_UserService_Address_V1_GetUserDefaultsResponse>

  func setUserDefaults(
    _ request: Appelis_UserService_Address_V1_SetUserDefaultsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Address_V1_SetUserDefaultsRequest, Appelis_UserService_Address_V1_SetUserDefaultsResponse>
}

extension Appelis_UserService_Address_V1_UserAddressesClientProtocol {
  public var serviceName: String {
    return "appelis.userService.address.v1.UserAddresses"
  }

  /// Gets all addresses that belongs to user on token. If there is no user returns empty list.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAllAddresses.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAllAddresses(
    _ request: Appelis_UserService_Address_V1_GetAllAddressesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Address_V1_GetAllAddressesRequest, Appelis_UserService_Address_V1_GetAllAddressesResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getAllAddresses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAllAddressesInterceptors() ?? []
    )
  }

  /// Sets address for user on token. If address with same ID already exists, it will be overwritten.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetAddress.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setAddress(
    _ request: Appelis_UserService_Address_V1_SetAddressRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Address_V1_SetAddressRequest, Appelis_UserService_Address_V1_SetAddressResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setAddress.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetAddressInterceptors() ?? []
    )
  }

  /// Delete Address by id from user addresses.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteAddress.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteAddress(
    _ request: Appelis_UserService_Address_V1_DeleteAddressRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Address_V1_DeleteAddressRequest, Appelis_UserService_Address_V1_DeleteAddressResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.deleteAddress.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteAddressInterceptors() ?? []
    )
  }

  /// Rpc default address settings for user on token.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetUserDefaults.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getUserDefaults(
    _ request: Appelis_UserService_Address_V1_GetUserDefaultsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Address_V1_GetUserDefaultsRequest, Appelis_UserService_Address_V1_GetUserDefaultsResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getUserDefaults.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUserDefaultsInterceptors() ?? []
    )
  }

  /// Sets default addresses for user on token. All data will be overwritten.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetUserDefaults.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setUserDefaults(
    _ request: Appelis_UserService_Address_V1_SetUserDefaultsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Address_V1_SetUserDefaultsRequest, Appelis_UserService_Address_V1_SetUserDefaultsResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setUserDefaults.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetUserDefaultsInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_UserService_Address_V1_UserAddressesClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_UserService_Address_V1_UserAddressesNIOClient")
public final class Appelis_UserService_Address_V1_UserAddressesClient: Appelis_UserService_Address_V1_UserAddressesClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.userService.address.v1.UserAddresses service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_UserService_Address_V1_UserAddressesNIOClient: Appelis_UserService_Address_V1_UserAddressesClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.userService.address.v1.UserAddresses service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Service will be checking user id in token. if user id won't be found in token, service will return empty reponses.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_UserService_Address_V1_UserAddressesAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? { get }

  func makeGetAllAddressesCall(
    _ request: Appelis_UserService_Address_V1_GetAllAddressesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_GetAllAddressesRequest, Appelis_UserService_Address_V1_GetAllAddressesResponse>

  func makeSetAddressCall(
    _ request: Appelis_UserService_Address_V1_SetAddressRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_SetAddressRequest, Appelis_UserService_Address_V1_SetAddressResponse>

  func makeDeleteAddressCall(
    _ request: Appelis_UserService_Address_V1_DeleteAddressRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_DeleteAddressRequest, Appelis_UserService_Address_V1_DeleteAddressResponse>

  func makeGetUserDefaultsCall(
    _ request: Appelis_UserService_Address_V1_GetUserDefaultsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_GetUserDefaultsRequest, Appelis_UserService_Address_V1_GetUserDefaultsResponse>

  func makeSetUserDefaultsCall(
    _ request: Appelis_UserService_Address_V1_SetUserDefaultsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_SetUserDefaultsRequest, Appelis_UserService_Address_V1_SetUserDefaultsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_UserService_Address_V1_UserAddressesAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_UserService_Address_V1_UserAddressesClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetAllAddressesCall(
    _ request: Appelis_UserService_Address_V1_GetAllAddressesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_GetAllAddressesRequest, Appelis_UserService_Address_V1_GetAllAddressesResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getAllAddresses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAllAddressesInterceptors() ?? []
    )
  }

  public func makeSetAddressCall(
    _ request: Appelis_UserService_Address_V1_SetAddressRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_SetAddressRequest, Appelis_UserService_Address_V1_SetAddressResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setAddress.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetAddressInterceptors() ?? []
    )
  }

  public func makeDeleteAddressCall(
    _ request: Appelis_UserService_Address_V1_DeleteAddressRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_DeleteAddressRequest, Appelis_UserService_Address_V1_DeleteAddressResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.deleteAddress.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteAddressInterceptors() ?? []
    )
  }

  public func makeGetUserDefaultsCall(
    _ request: Appelis_UserService_Address_V1_GetUserDefaultsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_GetUserDefaultsRequest, Appelis_UserService_Address_V1_GetUserDefaultsResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getUserDefaults.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUserDefaultsInterceptors() ?? []
    )
  }

  public func makeSetUserDefaultsCall(
    _ request: Appelis_UserService_Address_V1_SetUserDefaultsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Address_V1_SetUserDefaultsRequest, Appelis_UserService_Address_V1_SetUserDefaultsResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setUserDefaults.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetUserDefaultsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_UserService_Address_V1_UserAddressesAsyncClientProtocol {
  public func getAllAddresses(
    _ request: Appelis_UserService_Address_V1_GetAllAddressesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Address_V1_GetAllAddressesResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getAllAddresses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAllAddressesInterceptors() ?? []
    )
  }

  public func setAddress(
    _ request: Appelis_UserService_Address_V1_SetAddressRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Address_V1_SetAddressResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setAddress.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetAddressInterceptors() ?? []
    )
  }

  public func deleteAddress(
    _ request: Appelis_UserService_Address_V1_DeleteAddressRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Address_V1_DeleteAddressResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.deleteAddress.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteAddressInterceptors() ?? []
    )
  }

  public func getUserDefaults(
    _ request: Appelis_UserService_Address_V1_GetUserDefaultsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Address_V1_GetUserDefaultsResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getUserDefaults.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUserDefaultsInterceptors() ?? []
    )
  }

  public func setUserDefaults(
    _ request: Appelis_UserService_Address_V1_SetUserDefaultsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Address_V1_SetUserDefaultsResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setUserDefaults.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetUserDefaultsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_UserService_Address_V1_UserAddressesAsyncClient: Appelis_UserService_Address_V1_UserAddressesAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_UserService_Address_V1_UserAddressesClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getAllAddresses'.
  func makeGetAllAddressesInterceptors() -> [ClientInterceptor<Appelis_UserService_Address_V1_GetAllAddressesRequest, Appelis_UserService_Address_V1_GetAllAddressesResponse>]

  /// - Returns: Interceptors to use when invoking 'setAddress'.
  func makeSetAddressInterceptors() -> [ClientInterceptor<Appelis_UserService_Address_V1_SetAddressRequest, Appelis_UserService_Address_V1_SetAddressResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteAddress'.
  func makeDeleteAddressInterceptors() -> [ClientInterceptor<Appelis_UserService_Address_V1_DeleteAddressRequest, Appelis_UserService_Address_V1_DeleteAddressResponse>]

  /// - Returns: Interceptors to use when invoking 'getUserDefaults'.
  func makeGetUserDefaultsInterceptors() -> [ClientInterceptor<Appelis_UserService_Address_V1_GetUserDefaultsRequest, Appelis_UserService_Address_V1_GetUserDefaultsResponse>]

  /// - Returns: Interceptors to use when invoking 'setUserDefaults'.
  func makeSetUserDefaultsInterceptors() -> [ClientInterceptor<Appelis_UserService_Address_V1_SetUserDefaultsRequest, Appelis_UserService_Address_V1_SetUserDefaultsResponse>]
}

public enum Appelis_UserService_Address_V1_UserAddressesClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "UserAddresses",
    fullName: "appelis.userService.address.v1.UserAddresses",
    methods: [
      Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getAllAddresses,
      Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setAddress,
      Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.deleteAddress,
      Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.getUserDefaults,
      Appelis_UserService_Address_V1_UserAddressesClientMetadata.Methods.setUserDefaults,
    ]
  )

  public enum Methods {
    public static let getAllAddresses = GRPCMethodDescriptor(
      name: "GetAllAddresses",
      path: "/appelis.userService.address.v1.UserAddresses/GetAllAddresses",
      type: GRPCCallType.unary
    )

    public static let setAddress = GRPCMethodDescriptor(
      name: "SetAddress",
      path: "/appelis.userService.address.v1.UserAddresses/SetAddress",
      type: GRPCCallType.unary
    )

    public static let deleteAddress = GRPCMethodDescriptor(
      name: "DeleteAddress",
      path: "/appelis.userService.address.v1.UserAddresses/DeleteAddress",
      type: GRPCCallType.unary
    )

    public static let getUserDefaults = GRPCMethodDescriptor(
      name: "GetUserDefaults",
      path: "/appelis.userService.address.v1.UserAddresses/GetUserDefaults",
      type: GRPCCallType.unary
    )

    public static let setUserDefaults = GRPCMethodDescriptor(
      name: "SetUserDefaults",
      path: "/appelis.userService.address.v1.UserAddresses/SetUserDefaults",
      type: GRPCCallType.unary
    )
  }
}

