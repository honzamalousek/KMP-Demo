//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: business_service/business.private.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_Business_Private_V1_BusinessPrivateServiceClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Business_Private_V1_BusinessPrivateServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? { get }

  func getBusinessById(
    _ request: Appelis_Business_Private_V1_GetBusinessByIDRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Private_V1_GetBusinessByIDRequest, Appelis_Business_Private_V1_GetBusinessByIdResponse>

  func getBusinessesList(
    _ request: Appelis_Business_Private_V1_GetBusinessesListRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Private_V1_GetBusinessesListRequest, Appelis_Business_Private_V1_GetBusinessesListResponse>

  func getBusinessByExternalId(
    _ request: Appelis_Business_Private_V1_GetBusinessByExternalIdRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Private_V1_GetBusinessByExternalIdRequest, Appelis_Business_Private_V1_GetBusinessByExternalIdResponse>
}

extension Appelis_Business_Private_V1_BusinessPrivateServiceClientProtocol {
  public var serviceName: String {
    return "appelis.business.private.v1.BusinessPrivateService"
  }

  /// Unary call to GetBusinessById
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBusinessById.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBusinessById(
    _ request: Appelis_Business_Private_V1_GetBusinessByIDRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Private_V1_GetBusinessByIDRequest, Appelis_Business_Private_V1_GetBusinessByIdResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByIdInterceptors() ?? []
    )
  }

  /// Unary call to GetBusinessesList
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBusinessesList.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBusinessesList(
    _ request: Appelis_Business_Private_V1_GetBusinessesListRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Private_V1_GetBusinessesListRequest, Appelis_Business_Private_V1_GetBusinessesListResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessesList.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessesListInterceptors() ?? []
    )
  }

  /// Unary call to GetBusinessByExternalId
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBusinessByExternalId.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBusinessByExternalId(
    _ request: Appelis_Business_Private_V1_GetBusinessByExternalIdRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Private_V1_GetBusinessByExternalIdRequest, Appelis_Business_Private_V1_GetBusinessByExternalIdResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessByExternalId.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByExternalIdInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Business_Private_V1_BusinessPrivateServiceClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Business_Private_V1_BusinessPrivateServiceNIOClient")
public final class Appelis_Business_Private_V1_BusinessPrivateServiceClient: Appelis_Business_Private_V1_BusinessPrivateServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.business.private.v1.BusinessPrivateService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Business_Private_V1_BusinessPrivateServiceNIOClient: Appelis_Business_Private_V1_BusinessPrivateServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.business.private.v1.BusinessPrivateService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Business_Private_V1_BusinessPrivateServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? { get }

  func makeGetBusinessByIDCall(
    _ request: Appelis_Business_Private_V1_GetBusinessByIDRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Private_V1_GetBusinessByIDRequest, Appelis_Business_Private_V1_GetBusinessByIdResponse>

  func makeGetBusinessesListCall(
    _ request: Appelis_Business_Private_V1_GetBusinessesListRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Private_V1_GetBusinessesListRequest, Appelis_Business_Private_V1_GetBusinessesListResponse>

  func makeGetBusinessByExternalIDCall(
    _ request: Appelis_Business_Private_V1_GetBusinessByExternalIdRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Private_V1_GetBusinessByExternalIdRequest, Appelis_Business_Private_V1_GetBusinessByExternalIdResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Business_Private_V1_BusinessPrivateServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetBusinessByIDCall(
    _ request: Appelis_Business_Private_V1_GetBusinessByIDRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Private_V1_GetBusinessByIDRequest, Appelis_Business_Private_V1_GetBusinessByIdResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByIdInterceptors() ?? []
    )
  }

  public func makeGetBusinessesListCall(
    _ request: Appelis_Business_Private_V1_GetBusinessesListRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Private_V1_GetBusinessesListRequest, Appelis_Business_Private_V1_GetBusinessesListResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessesList.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessesListInterceptors() ?? []
    )
  }

  public func makeGetBusinessByExternalIDCall(
    _ request: Appelis_Business_Private_V1_GetBusinessByExternalIdRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Private_V1_GetBusinessByExternalIdRequest, Appelis_Business_Private_V1_GetBusinessByExternalIdResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessByExternalId.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByExternalIdInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Business_Private_V1_BusinessPrivateServiceAsyncClientProtocol {
  public func getBusinessById(
    _ request: Appelis_Business_Private_V1_GetBusinessByIDRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Private_V1_GetBusinessByIdResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByIdInterceptors() ?? []
    )
  }

  public func getBusinessesList(
    _ request: Appelis_Business_Private_V1_GetBusinessesListRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Private_V1_GetBusinessesListResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessesList.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessesListInterceptors() ?? []
    )
  }

  public func getBusinessByExternalId(
    _ request: Appelis_Business_Private_V1_GetBusinessByExternalIdRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Private_V1_GetBusinessByExternalIdResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessByExternalId.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByExternalIdInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Business_Private_V1_BusinessPrivateServiceAsyncClient: Appelis_Business_Private_V1_BusinessPrivateServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Business_Private_V1_BusinessPrivateServiceClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getBusinessById'.
  func makeGetBusinessByIdInterceptors() -> [ClientInterceptor<Appelis_Business_Private_V1_GetBusinessByIDRequest, Appelis_Business_Private_V1_GetBusinessByIdResponse>]

  /// - Returns: Interceptors to use when invoking 'getBusinessesList'.
  func makeGetBusinessesListInterceptors() -> [ClientInterceptor<Appelis_Business_Private_V1_GetBusinessesListRequest, Appelis_Business_Private_V1_GetBusinessesListResponse>]

  /// - Returns: Interceptors to use when invoking 'getBusinessByExternalId'.
  func makeGetBusinessByExternalIdInterceptors() -> [ClientInterceptor<Appelis_Business_Private_V1_GetBusinessByExternalIdRequest, Appelis_Business_Private_V1_GetBusinessByExternalIdResponse>]
}

public enum Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "BusinessPrivateService",
    fullName: "appelis.business.private.v1.BusinessPrivateService",
    methods: [
      Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessById,
      Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessesList,
      Appelis_Business_Private_V1_BusinessPrivateServiceClientMetadata.Methods.getBusinessByExternalId,
    ]
  )

  public enum Methods {
    public static let getBusinessById = GRPCMethodDescriptor(
      name: "GetBusinessById",
      path: "/appelis.business.private.v1.BusinessPrivateService/GetBusinessById",
      type: GRPCCallType.unary
    )

    public static let getBusinessesList = GRPCMethodDescriptor(
      name: "GetBusinessesList",
      path: "/appelis.business.private.v1.BusinessPrivateService/GetBusinessesList",
      type: GRPCCallType.unary
    )

    public static let getBusinessByExternalId = GRPCMethodDescriptor(
      name: "GetBusinessByExternalId",
      path: "/appelis.business.private.v1.BusinessPrivateService/GetBusinessByExternalId",
      type: GRPCCallType.unary
    )
  }
}

