//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: retail_cart/shippingRatesAdmin.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Service will be enforcing web user token claims.
///
/// Usage: instantiate `Appelis_Retail_Cart_V1_ShippingRateAdminClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Retail_Cart_V1_ShippingRateAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? { get }

  func getRates(
    _ request: Appelis_Retail_Cart_V1_GetRatesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Retail_Cart_V1_GetRatesRequest, Appelis_Retail_Cart_V1_GetRatesResponse>

  func setRate(
    _ request: Appelis_Retail_Cart_V1_SetRateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Retail_Cart_V1_SetRateRequest, Appelis_Retail_Cart_V1_SetRateResponse>

  func deleteRate(
    _ request: Appelis_Retail_Cart_V1_DeleteRateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Retail_Cart_V1_DeleteRateRequest, Appelis_Retail_Cart_V1_DeleteRateResponse>
}

extension Appelis_Retail_Cart_V1_ShippingRateAdminClientProtocol {
  public var serviceName: String {
    return "appelis.retail.cart.v1.ShippingRateAdmin"
  }

  /// Rpc gets all shipping rates from database.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRates.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRates(
    _ request: Appelis_Retail_Cart_V1_GetRatesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Retail_Cart_V1_GetRatesRequest, Appelis_Retail_Cart_V1_GetRatesResponse> {
    return self.makeUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.getRates.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRatesInterceptors() ?? []
    )
  }

  /// Set rate. If id exists data will be updated.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetRate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setRate(
    _ request: Appelis_Retail_Cart_V1_SetRateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Retail_Cart_V1_SetRateRequest, Appelis_Retail_Cart_V1_SetRateResponse> {
    return self.makeUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.setRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetRateInterceptors() ?? []
    )
  }

  /// Deletes rate when exists.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteRate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteRate(
    _ request: Appelis_Retail_Cart_V1_DeleteRateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Retail_Cart_V1_DeleteRateRequest, Appelis_Retail_Cart_V1_DeleteRateResponse> {
    return self.makeUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.deleteRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteRateInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Retail_Cart_V1_ShippingRateAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Retail_Cart_V1_ShippingRateAdminNIOClient")
public final class Appelis_Retail_Cart_V1_ShippingRateAdminClient: Appelis_Retail_Cart_V1_ShippingRateAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.retail.cart.v1.ShippingRateAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Retail_Cart_V1_ShippingRateAdminNIOClient: Appelis_Retail_Cart_V1_ShippingRateAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.retail.cart.v1.ShippingRateAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Service will be enforcing web user token claims.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Retail_Cart_V1_ShippingRateAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? { get }

  func makeGetRatesCall(
    _ request: Appelis_Retail_Cart_V1_GetRatesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_GetRatesRequest, Appelis_Retail_Cart_V1_GetRatesResponse>

  func makeSetRateCall(
    _ request: Appelis_Retail_Cart_V1_SetRateRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_SetRateRequest, Appelis_Retail_Cart_V1_SetRateResponse>

  func makeDeleteRateCall(
    _ request: Appelis_Retail_Cart_V1_DeleteRateRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_DeleteRateRequest, Appelis_Retail_Cart_V1_DeleteRateResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Retail_Cart_V1_ShippingRateAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetRatesCall(
    _ request: Appelis_Retail_Cart_V1_GetRatesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_GetRatesRequest, Appelis_Retail_Cart_V1_GetRatesResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.getRates.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRatesInterceptors() ?? []
    )
  }

  public func makeSetRateCall(
    _ request: Appelis_Retail_Cart_V1_SetRateRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_SetRateRequest, Appelis_Retail_Cart_V1_SetRateResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.setRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetRateInterceptors() ?? []
    )
  }

  public func makeDeleteRateCall(
    _ request: Appelis_Retail_Cart_V1_DeleteRateRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_DeleteRateRequest, Appelis_Retail_Cart_V1_DeleteRateResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.deleteRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteRateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Retail_Cart_V1_ShippingRateAdminAsyncClientProtocol {
  public func getRates(
    _ request: Appelis_Retail_Cart_V1_GetRatesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Retail_Cart_V1_GetRatesResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.getRates.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRatesInterceptors() ?? []
    )
  }

  public func setRate(
    _ request: Appelis_Retail_Cart_V1_SetRateRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Retail_Cart_V1_SetRateResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.setRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetRateInterceptors() ?? []
    )
  }

  public func deleteRate(
    _ request: Appelis_Retail_Cart_V1_DeleteRateRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Retail_Cart_V1_DeleteRateResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.deleteRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteRateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Retail_Cart_V1_ShippingRateAdminAsyncClient: Appelis_Retail_Cart_V1_ShippingRateAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Retail_Cart_V1_ShippingRateAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getRates'.
  func makeGetRatesInterceptors() -> [ClientInterceptor<Appelis_Retail_Cart_V1_GetRatesRequest, Appelis_Retail_Cart_V1_GetRatesResponse>]

  /// - Returns: Interceptors to use when invoking 'setRate'.
  func makeSetRateInterceptors() -> [ClientInterceptor<Appelis_Retail_Cart_V1_SetRateRequest, Appelis_Retail_Cart_V1_SetRateResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteRate'.
  func makeDeleteRateInterceptors() -> [ClientInterceptor<Appelis_Retail_Cart_V1_DeleteRateRequest, Appelis_Retail_Cart_V1_DeleteRateResponse>]
}

public enum Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ShippingRateAdmin",
    fullName: "appelis.retail.cart.v1.ShippingRateAdmin",
    methods: [
      Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.getRates,
      Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.setRate,
      Appelis_Retail_Cart_V1_ShippingRateAdminClientMetadata.Methods.deleteRate,
    ]
  )

  public enum Methods {
    public static let getRates = GRPCMethodDescriptor(
      name: "GetRates",
      path: "/appelis.retail.cart.v1.ShippingRateAdmin/GetRates",
      type: GRPCCallType.unary
    )

    public static let setRate = GRPCMethodDescriptor(
      name: "SetRate",
      path: "/appelis.retail.cart.v1.ShippingRateAdmin/SetRate",
      type: GRPCCallType.unary
    )

    public static let deleteRate = GRPCMethodDescriptor(
      name: "DeleteRate",
      path: "/appelis.retail.cart.v1.ShippingRateAdmin/DeleteRate",
      type: GRPCCallType.unary
    )
  }
}
