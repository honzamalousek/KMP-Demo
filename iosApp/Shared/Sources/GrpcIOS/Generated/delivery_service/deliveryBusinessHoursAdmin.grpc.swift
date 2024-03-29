//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: delivery_service/deliveryBusinessHoursAdmin.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_Order_Delivery_V1_DeliveryHoursAdminClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Order_Delivery_V1_DeliveryHoursAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? { get }

  func getBusinessDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursResponse>

  func setBusinessDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursResponse>

  func deleteDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest, Appelis_Order_Delivery_V1_DeleteDeliveryHoursResponse>
}

extension Appelis_Order_Delivery_V1_DeliveryHoursAdminClientProtocol {
  public var serviceName: String {
    return "appelis.order.delivery.v1.DeliveryHoursAdmin"
  }

  /// Gets delivery hours for selected business
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBusinessDeliveryHours.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBusinessDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursResponse> {
    return self.makeUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.getBusinessDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessDeliveryHoursInterceptors() ?? []
    )
  }

  /// Rpc is idempotent. Can be retried.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetBusinessDeliveryHours.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setBusinessDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursResponse> {
    return self.makeUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.setBusinessDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetBusinessDeliveryHoursInterceptors() ?? []
    )
  }

  /// Deletes business delivery hours selected by DeliveryHourPk data.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDeliveryHours.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest, Appelis_Order_Delivery_V1_DeleteDeliveryHoursResponse> {
    return self.makeUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.deleteDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeliveryHoursInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Order_Delivery_V1_DeliveryHoursAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Order_Delivery_V1_DeliveryHoursAdminNIOClient")
public final class Appelis_Order_Delivery_V1_DeliveryHoursAdminClient: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.order.delivery.v1.DeliveryHoursAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Order_Delivery_V1_DeliveryHoursAdminNIOClient: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.order.delivery.v1.DeliveryHoursAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Order_Delivery_V1_DeliveryHoursAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? { get }

  func makeGetBusinessDeliveryHoursCall(
    _ request: Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursResponse>

  func makeSetBusinessDeliveryHoursCall(
    _ request: Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursResponse>

  func makeDeleteDeliveryHoursCall(
    _ request: Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest, Appelis_Order_Delivery_V1_DeleteDeliveryHoursResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Order_Delivery_V1_DeliveryHoursAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetBusinessDeliveryHoursCall(
    _ request: Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.getBusinessDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessDeliveryHoursInterceptors() ?? []
    )
  }

  public func makeSetBusinessDeliveryHoursCall(
    _ request: Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.setBusinessDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetBusinessDeliveryHoursInterceptors() ?? []
    )
  }

  public func makeDeleteDeliveryHoursCall(
    _ request: Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest, Appelis_Order_Delivery_V1_DeleteDeliveryHoursResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.deleteDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeliveryHoursInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Order_Delivery_V1_DeliveryHoursAdminAsyncClientProtocol {
  public func getBusinessDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.getBusinessDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessDeliveryHoursInterceptors() ?? []
    )
  }

  public func setBusinessDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.setBusinessDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetBusinessDeliveryHoursInterceptors() ?? []
    )
  }

  public func deleteDeliveryHours(
    _ request: Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Order_Delivery_V1_DeleteDeliveryHoursResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.deleteDeliveryHours.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeliveryHoursInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Order_Delivery_V1_DeliveryHoursAdminAsyncClient: Appelis_Order_Delivery_V1_DeliveryHoursAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Order_Delivery_V1_DeliveryHoursAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getBusinessDeliveryHours'.
  func makeGetBusinessDeliveryHoursInterceptors() -> [ClientInterceptor<Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_GetBusinessDeliveryHoursResponse>]

  /// - Returns: Interceptors to use when invoking 'setBusinessDeliveryHours'.
  func makeSetBusinessDeliveryHoursInterceptors() -> [ClientInterceptor<Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursRequest, Appelis_Order_Delivery_V1_SetBusinessDeliveryHoursResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteDeliveryHours'.
  func makeDeleteDeliveryHoursInterceptors() -> [ClientInterceptor<Appelis_Order_Delivery_V1_DeleteDeliveryHoursRequest, Appelis_Order_Delivery_V1_DeleteDeliveryHoursResponse>]
}

public enum Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "DeliveryHoursAdmin",
    fullName: "appelis.order.delivery.v1.DeliveryHoursAdmin",
    methods: [
      Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.getBusinessDeliveryHours,
      Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.setBusinessDeliveryHours,
      Appelis_Order_Delivery_V1_DeliveryHoursAdminClientMetadata.Methods.deleteDeliveryHours,
    ]
  )

  public enum Methods {
    public static let getBusinessDeliveryHours = GRPCMethodDescriptor(
      name: "GetBusinessDeliveryHours",
      path: "/appelis.order.delivery.v1.DeliveryHoursAdmin/GetBusinessDeliveryHours",
      type: GRPCCallType.unary
    )

    public static let setBusinessDeliveryHours = GRPCMethodDescriptor(
      name: "SetBusinessDeliveryHours",
      path: "/appelis.order.delivery.v1.DeliveryHoursAdmin/SetBusinessDeliveryHours",
      type: GRPCCallType.unary
    )

    public static let deleteDeliveryHours = GRPCMethodDescriptor(
      name: "DeleteDeliveryHours",
      path: "/appelis.order.delivery.v1.DeliveryHoursAdmin/DeleteDeliveryHours",
      type: GRPCCallType.unary
    )
  }
}

