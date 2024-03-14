//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: user_service/userIcoProfileService.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClient`, then call methods of this protocol to make API calls.
public protocol Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? { get }

  func set(
    _ request: Appelis_UserService_Icoprofile_V1_SetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Icoprofile_V1_SetRequest, Appelis_UserService_Icoprofile_V1_SetResponse>

  func delete(
    _ request: Appelis_UserService_Icoprofile_V1_DeleteRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_UserService_Icoprofile_V1_DeleteRequest, Appelis_UserService_Icoprofile_V1_DeleteResponse>
}

extension Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientProtocol {
  public var serviceName: String {
    return "appelis.userService.icoprofile.v1.IcoProfilePublicAdmin"
  }

  /// Unary call to Set
  ///
  /// - Parameters:
  ///   - request: Request to send to Set.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func set(
    _ request: Appelis_UserService_Icoprofile_V1_SetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Icoprofile_V1_SetRequest, Appelis_UserService_Icoprofile_V1_SetResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.set.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetInterceptors() ?? []
    )
  }

  /// Unary call to Delete
  ///
  /// - Parameters:
  ///   - request: Request to send to Delete.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func delete(
    _ request: Appelis_UserService_Icoprofile_V1_DeleteRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_UserService_Icoprofile_V1_DeleteRequest, Appelis_UserService_Icoprofile_V1_DeleteResponse> {
    return self.makeUnaryCall(
      path: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.delete.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminNIOClient")
public final class Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClient: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.userService.icoprofile.v1.IcoProfilePublicAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminNIOClient: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.userService.icoprofile.v1.IcoProfilePublicAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? { get }

  func makeSetCall(
    _ request: Appelis_UserService_Icoprofile_V1_SetRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Icoprofile_V1_SetRequest, Appelis_UserService_Icoprofile_V1_SetResponse>

  func makeDeleteCall(
    _ request: Appelis_UserService_Icoprofile_V1_DeleteRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Icoprofile_V1_DeleteRequest, Appelis_UserService_Icoprofile_V1_DeleteResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeSetCall(
    _ request: Appelis_UserService_Icoprofile_V1_SetRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Icoprofile_V1_SetRequest, Appelis_UserService_Icoprofile_V1_SetResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.set.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetInterceptors() ?? []
    )
  }

  public func makeDeleteCall(
    _ request: Appelis_UserService_Icoprofile_V1_DeleteRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_UserService_Icoprofile_V1_DeleteRequest, Appelis_UserService_Icoprofile_V1_DeleteResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.delete.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminAsyncClientProtocol {
  public func set(
    _ request: Appelis_UserService_Icoprofile_V1_SetRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Icoprofile_V1_SetResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.set.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetInterceptors() ?? []
    )
  }

  public func delete(
    _ request: Appelis_UserService_Icoprofile_V1_DeleteRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_UserService_Icoprofile_V1_DeleteResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.delete.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminAsyncClient: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'set'.
  func makeSetInterceptors() -> [ClientInterceptor<Appelis_UserService_Icoprofile_V1_SetRequest, Appelis_UserService_Icoprofile_V1_SetResponse>]

  /// - Returns: Interceptors to use when invoking 'delete'.
  func makeDeleteInterceptors() -> [ClientInterceptor<Appelis_UserService_Icoprofile_V1_DeleteRequest, Appelis_UserService_Icoprofile_V1_DeleteResponse>]
}

public enum Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "IcoProfilePublicAdmin",
    fullName: "appelis.userService.icoprofile.v1.IcoProfilePublicAdmin",
    methods: [
      Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.set,
      Appelis_UserService_Icoprofile_V1_IcoProfilePublicAdminClientMetadata.Methods.delete,
    ]
  )

  public enum Methods {
    public static let set = GRPCMethodDescriptor(
      name: "Set",
      path: "/appelis.userService.icoprofile.v1.IcoProfilePublicAdmin/Set",
      type: GRPCCallType.unary
    )

    public static let delete = GRPCMethodDescriptor(
      name: "Delete",
      path: "/appelis.userService.icoprofile.v1.IcoProfilePublicAdmin/Delete",
      type: GRPCCallType.unary
    )
  }
}
