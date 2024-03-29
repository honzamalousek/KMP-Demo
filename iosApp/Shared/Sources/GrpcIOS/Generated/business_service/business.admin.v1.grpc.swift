//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: business_service/business.admin.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Appelis_Business_Admin_V1_BusinessAdminClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Business_Admin_V1_BusinessAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? { get }

  func getBusinessByID(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse>

  func getBusinesses(
    _ request: Appelis_Business_Admin_V1_GetBusinessesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesResponse>

  func getAllBusinesses(
    _ request: Appelis_Business_Admin_V1_GetAllBusinessesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetAllBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesPreviewResponse>

  func deleteBusinessByID(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_DeleteBusinessResponse>

  func createOrUpdateBusiness(
    _ request: Appelis_Business_Admin_V1_CreateBusinessRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Business_Admin_V1_CreateBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse>
}

extension Appelis_Business_Admin_V1_BusinessAdminClientProtocol {
  public var serviceName: String {
    return "appelis.business.admin.v1.BusinessAdmin"
  }

  /// Gets business by ID. Admin detail view.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBusinessByID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBusinessByID(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinessByID.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByIDInterceptors() ?? []
    )
  }

  /// Gets range of businesses filtered and sorted by request. Usable for admin preview.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBusinesses.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBusinesses(
    _ request: Appelis_Business_Admin_V1_GetBusinessesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinesses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessesInterceptors() ?? []
    )
  }

  /// Gets all businesses sorted by index. Usable for admin select boxes.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAllBusinesses.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAllBusinesses(
    _ request: Appelis_Business_Admin_V1_GetAllBusinessesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetAllBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesPreviewResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getAllBusinesses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAllBusinessesInterceptors() ?? []
    )
  }

  /// Deletes business by ID.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteBusinessByID.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteBusinessByID(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_DeleteBusinessResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.deleteBusinessByID.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteBusinessByIDInterceptors() ?? []
    )
  }

  /// Create or update business if ID is presented.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateOrUpdateBusiness.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createOrUpdateBusiness(
    _ request: Appelis_Business_Admin_V1_CreateBusinessRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Business_Admin_V1_CreateBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse> {
    return self.makeUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.createOrUpdateBusiness.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateOrUpdateBusinessInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Business_Admin_V1_BusinessAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Business_Admin_V1_BusinessAdminNIOClient")
public final class Appelis_Business_Admin_V1_BusinessAdminClient: Appelis_Business_Admin_V1_BusinessAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.business.admin.v1.BusinessAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Business_Admin_V1_BusinessAdminNIOClient: Appelis_Business_Admin_V1_BusinessAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.business.admin.v1.BusinessAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Business_Admin_V1_BusinessAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? { get }

  func makeGetBusinessByIDCall(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse>

  func makeGetBusinessesCall(
    _ request: Appelis_Business_Admin_V1_GetBusinessesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesResponse>

  func makeGetAllBusinessesCall(
    _ request: Appelis_Business_Admin_V1_GetAllBusinessesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetAllBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesPreviewResponse>

  func makeDeleteBusinessByIDCall(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_DeleteBusinessResponse>

  func makeCreateOrUpdateBusinessCall(
    _ request: Appelis_Business_Admin_V1_CreateBusinessRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_CreateBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Business_Admin_V1_BusinessAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Business_Admin_V1_BusinessAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetBusinessByIDCall(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinessByID.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByIDInterceptors() ?? []
    )
  }

  public func makeGetBusinessesCall(
    _ request: Appelis_Business_Admin_V1_GetBusinessesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinesses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessesInterceptors() ?? []
    )
  }

  public func makeGetAllBusinessesCall(
    _ request: Appelis_Business_Admin_V1_GetAllBusinessesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetAllBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesPreviewResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getAllBusinesses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAllBusinessesInterceptors() ?? []
    )
  }

  public func makeDeleteBusinessByIDCall(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_DeleteBusinessResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.deleteBusinessByID.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteBusinessByIDInterceptors() ?? []
    )
  }

  public func makeCreateOrUpdateBusinessCall(
    _ request: Appelis_Business_Admin_V1_CreateBusinessRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Business_Admin_V1_CreateBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.createOrUpdateBusiness.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateOrUpdateBusinessInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Business_Admin_V1_BusinessAdminAsyncClientProtocol {
  public func getBusinessByID(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Admin_V1_GetBusinessResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinessByID.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessByIDInterceptors() ?? []
    )
  }

  public func getBusinesses(
    _ request: Appelis_Business_Admin_V1_GetBusinessesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Admin_V1_GetBusinessesResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinesses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBusinessesInterceptors() ?? []
    )
  }

  public func getAllBusinesses(
    _ request: Appelis_Business_Admin_V1_GetAllBusinessesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Admin_V1_GetBusinessesPreviewResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getAllBusinesses.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAllBusinessesInterceptors() ?? []
    )
  }

  public func deleteBusinessByID(
    _ request: Appelis_Business_Admin_V1_GetBusinessRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Admin_V1_DeleteBusinessResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.deleteBusinessByID.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteBusinessByIDInterceptors() ?? []
    )
  }

  public func createOrUpdateBusiness(
    _ request: Appelis_Business_Admin_V1_CreateBusinessRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Business_Admin_V1_GetBusinessResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.createOrUpdateBusiness.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateOrUpdateBusinessInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Business_Admin_V1_BusinessAdminAsyncClient: Appelis_Business_Admin_V1_BusinessAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Business_Admin_V1_BusinessAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getBusinessByID'.
  func makeGetBusinessByIDInterceptors() -> [ClientInterceptor<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse>]

  /// - Returns: Interceptors to use when invoking 'getBusinesses'.
  func makeGetBusinessesInterceptors() -> [ClientInterceptor<Appelis_Business_Admin_V1_GetBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesResponse>]

  /// - Returns: Interceptors to use when invoking 'getAllBusinesses'.
  func makeGetAllBusinessesInterceptors() -> [ClientInterceptor<Appelis_Business_Admin_V1_GetAllBusinessesRequest, Appelis_Business_Admin_V1_GetBusinessesPreviewResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteBusinessByID'.
  func makeDeleteBusinessByIDInterceptors() -> [ClientInterceptor<Appelis_Business_Admin_V1_GetBusinessRequest, Appelis_Business_Admin_V1_DeleteBusinessResponse>]

  /// - Returns: Interceptors to use when invoking 'createOrUpdateBusiness'.
  func makeCreateOrUpdateBusinessInterceptors() -> [ClientInterceptor<Appelis_Business_Admin_V1_CreateBusinessRequest, Appelis_Business_Admin_V1_GetBusinessResponse>]
}

public enum Appelis_Business_Admin_V1_BusinessAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "BusinessAdmin",
    fullName: "appelis.business.admin.v1.BusinessAdmin",
    methods: [
      Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinessByID,
      Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getBusinesses,
      Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.getAllBusinesses,
      Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.deleteBusinessByID,
      Appelis_Business_Admin_V1_BusinessAdminClientMetadata.Methods.createOrUpdateBusiness,
    ]
  )

  public enum Methods {
    public static let getBusinessByID = GRPCMethodDescriptor(
      name: "GetBusinessByID",
      path: "/appelis.business.admin.v1.BusinessAdmin/GetBusinessByID",
      type: GRPCCallType.unary
    )

    public static let getBusinesses = GRPCMethodDescriptor(
      name: "GetBusinesses",
      path: "/appelis.business.admin.v1.BusinessAdmin/GetBusinesses",
      type: GRPCCallType.unary
    )

    public static let getAllBusinesses = GRPCMethodDescriptor(
      name: "GetAllBusinesses",
      path: "/appelis.business.admin.v1.BusinessAdmin/GetAllBusinesses",
      type: GRPCCallType.unary
    )

    public static let deleteBusinessByID = GRPCMethodDescriptor(
      name: "DeleteBusinessByID",
      path: "/appelis.business.admin.v1.BusinessAdmin/DeleteBusinessByID",
      type: GRPCCallType.unary
    )

    public static let createOrUpdateBusiness = GRPCMethodDescriptor(
      name: "CreateOrUpdateBusiness",
      path: "/appelis.business.admin.v1.BusinessAdmin/CreateOrUpdateBusiness",
      type: GRPCCallType.unary
    )
  }
}

