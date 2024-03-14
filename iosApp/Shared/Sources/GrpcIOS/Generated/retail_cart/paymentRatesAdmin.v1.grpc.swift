//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: retail_cart/paymentRatesAdmin.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Service will be enforcing web user token claims.
///
/// Usage: instantiate `Appelis_Retail_Cart_V1_PaymentRateAdminClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Retail_Cart_V1_PaymentRateAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? { get }

  func getRates(
    _ request: Appelis_Retail_Cart_V1_GetPaymentRatesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Retail_Cart_V1_GetPaymentRatesRequest, Appelis_Retail_Cart_V1_GetPaymentRatesResponse>

  func setRate(
    _ request: Appelis_Retail_Cart_V1_SetPaymentRateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Retail_Cart_V1_SetPaymentRateRequest, Appelis_Retail_Cart_V1_SetPaymentRateResponse>

  func deleteRate(
    _ request: Appelis_Retail_Cart_V1_DeletePaymentRateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Retail_Cart_V1_DeletePaymentRateRequest, Appelis_Retail_Cart_V1_DeletePaymentRateResponse>
}

extension Appelis_Retail_Cart_V1_PaymentRateAdminClientProtocol {
  public var serviceName: String {
    return "appelis.retail.cart.v1.PaymentRateAdmin"
  }

  /// Rpc gets all Payment rates from database.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRates.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRates(
    _ request: Appelis_Retail_Cart_V1_GetPaymentRatesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Retail_Cart_V1_GetPaymentRatesRequest, Appelis_Retail_Cart_V1_GetPaymentRatesResponse> {
    return self.makeUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.getRates.path,
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
    _ request: Appelis_Retail_Cart_V1_SetPaymentRateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Retail_Cart_V1_SetPaymentRateRequest, Appelis_Retail_Cart_V1_SetPaymentRateResponse> {
    return self.makeUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.setRate.path,
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
    _ request: Appelis_Retail_Cart_V1_DeletePaymentRateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Retail_Cart_V1_DeletePaymentRateRequest, Appelis_Retail_Cart_V1_DeletePaymentRateResponse> {
    return self.makeUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.deleteRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteRateInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Retail_Cart_V1_PaymentRateAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Retail_Cart_V1_PaymentRateAdminNIOClient")
public final class Appelis_Retail_Cart_V1_PaymentRateAdminClient: Appelis_Retail_Cart_V1_PaymentRateAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.retail.cart.v1.PaymentRateAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Retail_Cart_V1_PaymentRateAdminNIOClient: Appelis_Retail_Cart_V1_PaymentRateAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.retail.cart.v1.PaymentRateAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Service will be enforcing web user token claims.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Retail_Cart_V1_PaymentRateAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? { get }

  func makeGetRatesCall(
    _ request: Appelis_Retail_Cart_V1_GetPaymentRatesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_GetPaymentRatesRequest, Appelis_Retail_Cart_V1_GetPaymentRatesResponse>

  func makeSetRateCall(
    _ request: Appelis_Retail_Cart_V1_SetPaymentRateRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_SetPaymentRateRequest, Appelis_Retail_Cart_V1_SetPaymentRateResponse>

  func makeDeleteRateCall(
    _ request: Appelis_Retail_Cart_V1_DeletePaymentRateRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_DeletePaymentRateRequest, Appelis_Retail_Cart_V1_DeletePaymentRateResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Retail_Cart_V1_PaymentRateAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetRatesCall(
    _ request: Appelis_Retail_Cart_V1_GetPaymentRatesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_GetPaymentRatesRequest, Appelis_Retail_Cart_V1_GetPaymentRatesResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.getRates.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRatesInterceptors() ?? []
    )
  }

  public func makeSetRateCall(
    _ request: Appelis_Retail_Cart_V1_SetPaymentRateRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_SetPaymentRateRequest, Appelis_Retail_Cart_V1_SetPaymentRateResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.setRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetRateInterceptors() ?? []
    )
  }

  public func makeDeleteRateCall(
    _ request: Appelis_Retail_Cart_V1_DeletePaymentRateRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Retail_Cart_V1_DeletePaymentRateRequest, Appelis_Retail_Cart_V1_DeletePaymentRateResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.deleteRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteRateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Retail_Cart_V1_PaymentRateAdminAsyncClientProtocol {
  public func getRates(
    _ request: Appelis_Retail_Cart_V1_GetPaymentRatesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Retail_Cart_V1_GetPaymentRatesResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.getRates.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetRatesInterceptors() ?? []
    )
  }

  public func setRate(
    _ request: Appelis_Retail_Cart_V1_SetPaymentRateRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Retail_Cart_V1_SetPaymentRateResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.setRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetRateInterceptors() ?? []
    )
  }

  public func deleteRate(
    _ request: Appelis_Retail_Cart_V1_DeletePaymentRateRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Retail_Cart_V1_DeletePaymentRateResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.deleteRate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteRateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Retail_Cart_V1_PaymentRateAdminAsyncClient: Appelis_Retail_Cart_V1_PaymentRateAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Retail_Cart_V1_PaymentRateAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getRates'.
  func makeGetRatesInterceptors() -> [ClientInterceptor<Appelis_Retail_Cart_V1_GetPaymentRatesRequest, Appelis_Retail_Cart_V1_GetPaymentRatesResponse>]

  /// - Returns: Interceptors to use when invoking 'setRate'.
  func makeSetRateInterceptors() -> [ClientInterceptor<Appelis_Retail_Cart_V1_SetPaymentRateRequest, Appelis_Retail_Cart_V1_SetPaymentRateResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteRate'.
  func makeDeleteRateInterceptors() -> [ClientInterceptor<Appelis_Retail_Cart_V1_DeletePaymentRateRequest, Appelis_Retail_Cart_V1_DeletePaymentRateResponse>]
}

public enum Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "PaymentRateAdmin",
    fullName: "appelis.retail.cart.v1.PaymentRateAdmin",
    methods: [
      Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.getRates,
      Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.setRate,
      Appelis_Retail_Cart_V1_PaymentRateAdminClientMetadata.Methods.deleteRate,
    ]
  )

  public enum Methods {
    public static let getRates = GRPCMethodDescriptor(
      name: "GetRates",
      path: "/appelis.retail.cart.v1.PaymentRateAdmin/GetRates",
      type: GRPCCallType.unary
    )

    public static let setRate = GRPCMethodDescriptor(
      name: "SetRate",
      path: "/appelis.retail.cart.v1.PaymentRateAdmin/SetRate",
      type: GRPCCallType.unary
    )

    public static let deleteRate = GRPCMethodDescriptor(
      name: "DeleteRate",
      path: "/appelis.retail.cart.v1.PaymentRateAdmin/DeleteRate",
      type: GRPCCallType.unary
    )
  }
}

