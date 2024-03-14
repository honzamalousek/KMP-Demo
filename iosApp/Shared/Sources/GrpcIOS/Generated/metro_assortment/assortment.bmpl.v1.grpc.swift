//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: metro_assortment/assortment.bmpl.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Service for handling bmpl prices from administration
///
/// Usage: instantiate `Metro_Assortment_V1_BmplAdminClient`, then call methods of this protocol to make API calls.
public protocol Metro_Assortment_V1_BmplAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? { get }

  func streamAllPrices(
    _ request: Metro_Assortment_V1_StreamAllPricesRequest,
    callOptions: CallOptions?,
    handler: @escaping (Metro_Assortment_V1_AllPricesResponse) -> Void
  ) -> ServerStreamingCall<Metro_Assortment_V1_StreamAllPricesRequest, Metro_Assortment_V1_AllPricesResponse>

  func setPrices(
    _ request: Metro_Assortment_V1_SetPricesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Assortment_V1_SetPricesRequest, Metro_Assortment_V1_AllPricesResponse>

  func deletePrices(
    _ request: Metro_Assortment_V1_DeletePricesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Assortment_V1_DeletePricesRequest, Metro_Assortment_V1_DeletePricesResponse>
}

extension Metro_Assortment_V1_BmplAdminClientProtocol {
  public var serviceName: String {
    return "metro.assortment.v1.BmplAdmin"
  }

  /// Getting all prices from database for comparing.
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamAllPrices.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamAllPrices(
    _ request: Metro_Assortment_V1_StreamAllPricesRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Metro_Assortment_V1_AllPricesResponse) -> Void
  ) -> ServerStreamingCall<Metro_Assortment_V1_StreamAllPricesRequest, Metro_Assortment_V1_AllPricesResponse> {
    return self.makeServerStreamingCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.streamAllPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamAllPricesInterceptors() ?? [],
      handler: handler
    )
  }

  /// Unary call to SetPrices
  ///
  /// - Parameters:
  ///   - request: Request to send to SetPrices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setPrices(
    _ request: Metro_Assortment_V1_SetPricesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Assortment_V1_SetPricesRequest, Metro_Assortment_V1_AllPricesResponse> {
    return self.makeUnaryCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.setPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPricesInterceptors() ?? []
    )
  }

  /// Unary call to DeletePrices
  ///
  /// - Parameters:
  ///   - request: Request to send to DeletePrices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deletePrices(
    _ request: Metro_Assortment_V1_DeletePricesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Assortment_V1_DeletePricesRequest, Metro_Assortment_V1_DeletePricesResponse> {
    return self.makeUnaryCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.deletePrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeletePricesInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Metro_Assortment_V1_BmplAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Metro_Assortment_V1_BmplAdminNIOClient")
public final class Metro_Assortment_V1_BmplAdminClient: Metro_Assortment_V1_BmplAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the metro.assortment.v1.BmplAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Metro_Assortment_V1_BmplAdminNIOClient: Metro_Assortment_V1_BmplAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the metro.assortment.v1.BmplAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Service for handling bmpl prices from administration
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Metro_Assortment_V1_BmplAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? { get }

  func makeStreamAllPricesCall(
    _ request: Metro_Assortment_V1_StreamAllPricesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<Metro_Assortment_V1_StreamAllPricesRequest, Metro_Assortment_V1_AllPricesResponse>

  func makeSetPricesCall(
    _ request: Metro_Assortment_V1_SetPricesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_SetPricesRequest, Metro_Assortment_V1_AllPricesResponse>

  func makeDeletePricesCall(
    _ request: Metro_Assortment_V1_DeletePricesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_DeletePricesRequest, Metro_Assortment_V1_DeletePricesResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Assortment_V1_BmplAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Metro_Assortment_V1_BmplAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeStreamAllPricesCall(
    _ request: Metro_Assortment_V1_StreamAllPricesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<Metro_Assortment_V1_StreamAllPricesRequest, Metro_Assortment_V1_AllPricesResponse> {
    return self.makeAsyncServerStreamingCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.streamAllPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamAllPricesInterceptors() ?? []
    )
  }

  public func makeSetPricesCall(
    _ request: Metro_Assortment_V1_SetPricesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_SetPricesRequest, Metro_Assortment_V1_AllPricesResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.setPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPricesInterceptors() ?? []
    )
  }

  public func makeDeletePricesCall(
    _ request: Metro_Assortment_V1_DeletePricesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_DeletePricesRequest, Metro_Assortment_V1_DeletePricesResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.deletePrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeletePricesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Assortment_V1_BmplAdminAsyncClientProtocol {
  public func streamAllPrices(
    _ request: Metro_Assortment_V1_StreamAllPricesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Metro_Assortment_V1_AllPricesResponse> {
    return self.performAsyncServerStreamingCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.streamAllPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamAllPricesInterceptors() ?? []
    )
  }

  public func setPrices(
    _ request: Metro_Assortment_V1_SetPricesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Assortment_V1_AllPricesResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.setPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPricesInterceptors() ?? []
    )
  }

  public func deletePrices(
    _ request: Metro_Assortment_V1_DeletePricesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Assortment_V1_DeletePricesResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Assortment_V1_BmplAdminClientMetadata.Methods.deletePrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeletePricesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Metro_Assortment_V1_BmplAdminAsyncClient: Metro_Assortment_V1_BmplAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Metro_Assortment_V1_BmplAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'streamAllPrices'.
  func makeStreamAllPricesInterceptors() -> [ClientInterceptor<Metro_Assortment_V1_StreamAllPricesRequest, Metro_Assortment_V1_AllPricesResponse>]

  /// - Returns: Interceptors to use when invoking 'setPrices'.
  func makeSetPricesInterceptors() -> [ClientInterceptor<Metro_Assortment_V1_SetPricesRequest, Metro_Assortment_V1_AllPricesResponse>]

  /// - Returns: Interceptors to use when invoking 'deletePrices'.
  func makeDeletePricesInterceptors() -> [ClientInterceptor<Metro_Assortment_V1_DeletePricesRequest, Metro_Assortment_V1_DeletePricesResponse>]
}

public enum Metro_Assortment_V1_BmplAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "BmplAdmin",
    fullName: "metro.assortment.v1.BmplAdmin",
    methods: [
      Metro_Assortment_V1_BmplAdminClientMetadata.Methods.streamAllPrices,
      Metro_Assortment_V1_BmplAdminClientMetadata.Methods.setPrices,
      Metro_Assortment_V1_BmplAdminClientMetadata.Methods.deletePrices,
    ]
  )

  public enum Methods {
    public static let streamAllPrices = GRPCMethodDescriptor(
      name: "StreamAllPrices",
      path: "/metro.assortment.v1.BmplAdmin/StreamAllPrices",
      type: GRPCCallType.serverStreaming
    )

    public static let setPrices = GRPCMethodDescriptor(
      name: "SetPrices",
      path: "/metro.assortment.v1.BmplAdmin/SetPrices",
      type: GRPCCallType.unary
    )

    public static let deletePrices = GRPCMethodDescriptor(
      name: "DeletePrices",
      path: "/metro.assortment.v1.BmplAdmin/DeletePrices",
      type: GRPCCallType.unary
    )
  }
}
