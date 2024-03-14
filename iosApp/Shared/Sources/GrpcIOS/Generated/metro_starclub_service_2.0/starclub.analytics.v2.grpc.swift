//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: metro_starclub_service_2.0/starclub.analytics.v2.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Metro_Starclub_V2_AnalyticsClient`, then call methods of this protocol to make API calls.
public protocol Metro_Starclub_V2_AnalyticsClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? { get }

  func getPagedSpendingMovements(
    _ request: Metro_Starclub_V2_GetPagedSpendingMovementsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_GetPagedSpendingMovementsRequest, Metro_Starclub_V2_GetPagedSpendingMovementsResponse>

  func streamAccountBalancesAndPolicyApproves(
    _ request: Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest,
    callOptions: CallOptions?,
    handler: @escaping (Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse) -> Void
  ) -> ServerStreamingCall<Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest, Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse>
}

extension Metro_Starclub_V2_AnalyticsClientProtocol {
  public var serviceName: String {
    return "metro.starclub.v2.Analytics"
  }

  /// Unary call to GetPagedSpendingMovements
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPagedSpendingMovements.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPagedSpendingMovements(
    _ request: Metro_Starclub_V2_GetPagedSpendingMovementsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_GetPagedSpendingMovementsRequest, Metro_Starclub_V2_GetPagedSpendingMovementsResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_AnalyticsClientMetadata.Methods.getPagedSpendingMovements.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPagedSpendingMovementsInterceptors() ?? []
    )
  }

  /// Server streaming call to StreamAccountBalancesAndPolicyApproves
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamAccountBalancesAndPolicyApproves.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamAccountBalancesAndPolicyApproves(
    _ request: Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse) -> Void
  ) -> ServerStreamingCall<Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest, Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse> {
    return self.makeServerStreamingCall(
      path: Metro_Starclub_V2_AnalyticsClientMetadata.Methods.streamAccountBalancesAndPolicyApproves.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamAccountBalancesAndPolicyApprovesInterceptors() ?? [],
      handler: handler
    )
  }
}

@available(*, deprecated)
extension Metro_Starclub_V2_AnalyticsClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Metro_Starclub_V2_AnalyticsNIOClient")
public final class Metro_Starclub_V2_AnalyticsClient: Metro_Starclub_V2_AnalyticsClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the metro.starclub.v2.Analytics service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Metro_Starclub_V2_AnalyticsNIOClient: Metro_Starclub_V2_AnalyticsClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol?

  /// Creates a client for the metro.starclub.v2.Analytics service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Metro_Starclub_V2_AnalyticsAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? { get }

  func makeGetPagedSpendingMovementsCall(
    _ request: Metro_Starclub_V2_GetPagedSpendingMovementsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetPagedSpendingMovementsRequest, Metro_Starclub_V2_GetPagedSpendingMovementsResponse>

  func makeStreamAccountBalancesAndPolicyApprovesCall(
    _ request: Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest, Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Starclub_V2_AnalyticsAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Metro_Starclub_V2_AnalyticsClientMetadata.serviceDescriptor
  }

  public var interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetPagedSpendingMovementsCall(
    _ request: Metro_Starclub_V2_GetPagedSpendingMovementsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetPagedSpendingMovementsRequest, Metro_Starclub_V2_GetPagedSpendingMovementsResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_AnalyticsClientMetadata.Methods.getPagedSpendingMovements.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPagedSpendingMovementsInterceptors() ?? []
    )
  }

  public func makeStreamAccountBalancesAndPolicyApprovesCall(
    _ request: Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest, Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse> {
    return self.makeAsyncServerStreamingCall(
      path: Metro_Starclub_V2_AnalyticsClientMetadata.Methods.streamAccountBalancesAndPolicyApproves.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamAccountBalancesAndPolicyApprovesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Starclub_V2_AnalyticsAsyncClientProtocol {
  public func getPagedSpendingMovements(
    _ request: Metro_Starclub_V2_GetPagedSpendingMovementsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_GetPagedSpendingMovementsResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_AnalyticsClientMetadata.Methods.getPagedSpendingMovements.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPagedSpendingMovementsInterceptors() ?? []
    )
  }

  public func streamAccountBalancesAndPolicyApproves(
    _ request: Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse> {
    return self.performAsyncServerStreamingCall(
      path: Metro_Starclub_V2_AnalyticsClientMetadata.Methods.streamAccountBalancesAndPolicyApproves.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamAccountBalancesAndPolicyApprovesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Metro_Starclub_V2_AnalyticsAsyncClient: Metro_Starclub_V2_AnalyticsAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Metro_Starclub_V2_AnalyticsClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getPagedSpendingMovements'.
  func makeGetPagedSpendingMovementsInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_GetPagedSpendingMovementsRequest, Metro_Starclub_V2_GetPagedSpendingMovementsResponse>]

  /// - Returns: Interceptors to use when invoking 'streamAccountBalancesAndPolicyApproves'.
  func makeStreamAccountBalancesAndPolicyApprovesInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_AccountBalancesAndPolicyApprovesRequest, Metro_Starclub_V2_AccountBalancesAndPolicyApprovesResponse>]
}

public enum Metro_Starclub_V2_AnalyticsClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Analytics",
    fullName: "metro.starclub.v2.Analytics",
    methods: [
      Metro_Starclub_V2_AnalyticsClientMetadata.Methods.getPagedSpendingMovements,
      Metro_Starclub_V2_AnalyticsClientMetadata.Methods.streamAccountBalancesAndPolicyApproves,
    ]
  )

  public enum Methods {
    public static let getPagedSpendingMovements = GRPCMethodDescriptor(
      name: "GetPagedSpendingMovements",
      path: "/metro.starclub.v2.Analytics/GetPagedSpendingMovements",
      type: GRPCCallType.unary
    )

    public static let streamAccountBalancesAndPolicyApproves = GRPCMethodDescriptor(
      name: "StreamAccountBalancesAndPolicyApproves",
      path: "/metro.starclub.v2.Analytics/StreamAccountBalancesAndPolicyApproves",
      type: GRPCCallType.serverStreaming
    )
  }
}
