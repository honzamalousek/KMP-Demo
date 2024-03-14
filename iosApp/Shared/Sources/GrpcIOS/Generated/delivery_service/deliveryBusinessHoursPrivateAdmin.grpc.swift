//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: delivery_service/deliveryBusinessHoursPrivateAdmin.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_Order_Delivery_V1_DeliveryHoursPrivateClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? { get }

  func getHours(
    _ request: Appelis_Order_Delivery_V1_GetHoursRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Order_Delivery_V1_GetHoursRequest, Appelis_Order_Delivery_V1_GetHoursResponse>
}

extension Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientProtocol {
  public var serviceName: String {
    return "appelis.order.delivery.v1.DeliveryHoursPrivate"
  }

  /// Gets business delivery hours. Rpc is used in private services communication.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetHours.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getHours(
    _ request: Appelis_Order_Delivery_V1_GetHoursRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Order_Delivery_V1_GetHoursRequest, Appelis_Order_Delivery_V1_GetHoursResponse> {
    return self.makeUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientMetadata.Methods.getHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetHoursInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Order_Delivery_V1_DeliveryHoursPrivateClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Order_Delivery_V1_DeliveryHoursPrivateNIOClient")
public final class Appelis_Order_Delivery_V1_DeliveryHoursPrivateClient: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.order.delivery.v1.DeliveryHoursPrivate service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Order_Delivery_V1_DeliveryHoursPrivateNIOClient: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.order.delivery.v1.DeliveryHoursPrivate service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Order_Delivery_V1_DeliveryHoursPrivateAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? { get }

  func makeGetHoursCall(
    _ request: Appelis_Order_Delivery_V1_GetHoursRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_GetHoursRequest, Appelis_Order_Delivery_V1_GetHoursResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Order_Delivery_V1_DeliveryHoursPrivateAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetHoursCall(
    _ request: Appelis_Order_Delivery_V1_GetHoursRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_GetHoursRequest, Appelis_Order_Delivery_V1_GetHoursResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientMetadata.Methods.getHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetHoursInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Order_Delivery_V1_DeliveryHoursPrivateAsyncClientProtocol {
  public func getHours(
    _ request: Appelis_Order_Delivery_V1_GetHoursRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Order_Delivery_V1_GetHoursResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientMetadata.Methods.getHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetHoursInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Order_Delivery_V1_DeliveryHoursPrivateAsyncClient: Appelis_Order_Delivery_V1_DeliveryHoursPrivateAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getHours'.
  func makeGetHoursInterceptors() -> [ClientInterceptor<Appelis_Order_Delivery_V1_GetHoursRequest, Appelis_Order_Delivery_V1_GetHoursResponse>]
}

public enum Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "DeliveryHoursPrivate",
    fullName: "appelis.order.delivery.v1.DeliveryHoursPrivate",
    methods: [
      Appelis_Order_Delivery_V1_DeliveryHoursPrivateClientMetadata.Methods.getHours,
    ]
  )

  public enum Methods {
    public static let getHours = GRPCMethodDescriptor(
      name: "GetHours",
      path: "/appelis.order.delivery.v1.DeliveryHoursPrivate/GetHours",
      type: GRPCCallType.unary
    )
  }
}
