//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: metro_assortment/assortment.cip.catalog.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Metro_Assortment_V1_CipCatalogClient`, then call methods of this protocol to make API calls.
public protocol Metro_Assortment_V1_CipCatalogClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? { get }

  func getCompanyCipPrices(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesResponse>

  func getCompanyCipPricesCount(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesCountResponse>
}

extension Metro_Assortment_V1_CipCatalogClientProtocol {
  public var serviceName: String {
    return "metro.assortment.v1.CipCatalog"
  }

  /// Unary call to GetCompanyCipPrices
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCompanyCipPrices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCompanyCipPrices(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesResponse> {
    return self.makeUnaryCall(
      path: Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompanyCipPricesInterceptors() ?? []
    )
  }

  /// Unary call to GetCompanyCipPricesCount
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCompanyCipPricesCount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCompanyCipPricesCount(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesCountResponse> {
    return self.makeUnaryCall(
      path: Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPricesCount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompanyCipPricesCountInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Metro_Assortment_V1_CipCatalogClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Metro_Assortment_V1_CipCatalogNIOClient")
public final class Metro_Assortment_V1_CipCatalogClient: Metro_Assortment_V1_CipCatalogClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the metro.assortment.v1.CipCatalog service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Metro_Assortment_V1_CipCatalogNIOClient: Metro_Assortment_V1_CipCatalogClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol?

  /// Creates a client for the metro.assortment.v1.CipCatalog service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Metro_Assortment_V1_CipCatalogAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? { get }

  func makeGetCompanyCipPricesCall(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesResponse>

  func makeGetCompanyCipPricesCountCall(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesCountResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Assortment_V1_CipCatalogAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Metro_Assortment_V1_CipCatalogClientMetadata.serviceDescriptor
  }

  public var interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetCompanyCipPricesCall(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompanyCipPricesInterceptors() ?? []
    )
  }

  public func makeGetCompanyCipPricesCountCall(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesCountResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPricesCount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompanyCipPricesCountInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Assortment_V1_CipCatalogAsyncClientProtocol {
  public func getCompanyCipPrices(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Assortment_V1_GetCompanyCipPricesResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPrices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompanyCipPricesInterceptors() ?? []
    )
  }

  public func getCompanyCipPricesCount(
    _ request: Metro_Assortment_V1_GetCompanyCipPricesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Assortment_V1_GetCompanyCipPricesCountResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPricesCount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompanyCipPricesCountInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Metro_Assortment_V1_CipCatalogAsyncClient: Metro_Assortment_V1_CipCatalogAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Metro_Assortment_V1_CipCatalogClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getCompanyCipPrices'.
  func makeGetCompanyCipPricesInterceptors() -> [ClientInterceptor<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesResponse>]

  /// - Returns: Interceptors to use when invoking 'getCompanyCipPricesCount'.
  func makeGetCompanyCipPricesCountInterceptors() -> [ClientInterceptor<Metro_Assortment_V1_GetCompanyCipPricesRequest, Metro_Assortment_V1_GetCompanyCipPricesCountResponse>]
}

public enum Metro_Assortment_V1_CipCatalogClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "CipCatalog",
    fullName: "metro.assortment.v1.CipCatalog",
    methods: [
      Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPrices,
      Metro_Assortment_V1_CipCatalogClientMetadata.Methods.getCompanyCipPricesCount,
    ]
  )

  public enum Methods {
    public static let getCompanyCipPrices = GRPCMethodDescriptor(
      name: "GetCompanyCipPrices",
      path: "/metro.assortment.v1.CipCatalog/GetCompanyCipPrices",
      type: GRPCCallType.unary
    )

    public static let getCompanyCipPricesCount = GRPCMethodDescriptor(
      name: "GetCompanyCipPricesCount",
      path: "/metro.assortment.v1.CipCatalog/GetCompanyCipPricesCount",
      type: GRPCCallType.unary
    )
  }
}

