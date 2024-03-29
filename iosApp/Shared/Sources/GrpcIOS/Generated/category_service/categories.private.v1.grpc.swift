//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: category_service/categories.private.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_Category_V1_PrivateCategoriesClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Category_V1_PrivateCategoriesClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? { get }

  func streamProjectCategories(
    _ request: Appelis_Category_V1_StreamProjectCategoriesRequest,
    callOptions: CallOptions?,
    handler: @escaping (Appelis_Category_V1_StreamProjectCategoriesResponse) -> Void
  ) -> ServerStreamingCall<Appelis_Category_V1_StreamProjectCategoriesRequest, Appelis_Category_V1_StreamProjectCategoriesResponse>
}

extension Appelis_Category_V1_PrivateCategoriesClientProtocol {
  public var serviceName: String {
    return "appelis.category.v1.PrivateCategories"
  }

  /// Server streaming call to StreamProjectCategories
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamProjectCategories.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamProjectCategories(
    _ request: Appelis_Category_V1_StreamProjectCategoriesRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Appelis_Category_V1_StreamProjectCategoriesResponse) -> Void
  ) -> ServerStreamingCall<Appelis_Category_V1_StreamProjectCategoriesRequest, Appelis_Category_V1_StreamProjectCategoriesResponse> {
    return self.makeServerStreamingCall(
      path: Appelis_Category_V1_PrivateCategoriesClientMetadata.Methods.streamProjectCategories.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamProjectCategoriesInterceptors() ?? [],
      handler: handler
    )
  }
}

@available(*, deprecated)
extension Appelis_Category_V1_PrivateCategoriesClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Category_V1_PrivateCategoriesNIOClient")
public final class Appelis_Category_V1_PrivateCategoriesClient: Appelis_Category_V1_PrivateCategoriesClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.category.v1.PrivateCategories service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Category_V1_PrivateCategoriesNIOClient: Appelis_Category_V1_PrivateCategoriesClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.category.v1.PrivateCategories service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Category_V1_PrivateCategoriesAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? { get }

  func makeStreamProjectCategoriesCall(
    _ request: Appelis_Category_V1_StreamProjectCategoriesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<Appelis_Category_V1_StreamProjectCategoriesRequest, Appelis_Category_V1_StreamProjectCategoriesResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Category_V1_PrivateCategoriesAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Category_V1_PrivateCategoriesClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeStreamProjectCategoriesCall(
    _ request: Appelis_Category_V1_StreamProjectCategoriesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<Appelis_Category_V1_StreamProjectCategoriesRequest, Appelis_Category_V1_StreamProjectCategoriesResponse> {
    return self.makeAsyncServerStreamingCall(
      path: Appelis_Category_V1_PrivateCategoriesClientMetadata.Methods.streamProjectCategories.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamProjectCategoriesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Category_V1_PrivateCategoriesAsyncClientProtocol {
  public func streamProjectCategories(
    _ request: Appelis_Category_V1_StreamProjectCategoriesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Appelis_Category_V1_StreamProjectCategoriesResponse> {
    return self.performAsyncServerStreamingCall(
      path: Appelis_Category_V1_PrivateCategoriesClientMetadata.Methods.streamProjectCategories.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamProjectCategoriesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Category_V1_PrivateCategoriesAsyncClient: Appelis_Category_V1_PrivateCategoriesAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Category_V1_PrivateCategoriesClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'streamProjectCategories'.
  func makeStreamProjectCategoriesInterceptors() -> [ClientInterceptor<Appelis_Category_V1_StreamProjectCategoriesRequest, Appelis_Category_V1_StreamProjectCategoriesResponse>]
}

public enum Appelis_Category_V1_PrivateCategoriesClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "PrivateCategories",
    fullName: "appelis.category.v1.PrivateCategories",
    methods: [
      Appelis_Category_V1_PrivateCategoriesClientMetadata.Methods.streamProjectCategories,
    ]
  )

  public enum Methods {
    public static let streamProjectCategories = GRPCMethodDescriptor(
      name: "StreamProjectCategories",
      path: "/appelis.category.v1.PrivateCategories/StreamProjectCategories",
      type: GRPCCallType.serverStreaming
    )
  }
}

