//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: loyalty/loyalty.policy.private.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Metro_Loyalty_V1_LoyaltyPolicyPrivateClient`, then call methods of this protocol to make API calls.
public protocol Metro_Loyalty_V1_LoyaltyPolicyPrivateClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? { get }

  func getPolicyShort(
    _ request: Metro_Loyalty_V1_GetPolicyShortRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Loyalty_V1_GetPolicyShortRequest, Metro_Loyalty_V1_GetPolicyShortResponse>

  func getPoliciesShortAll(
    _ request: Metro_Loyalty_V1_GetPoliciesShortAllRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Loyalty_V1_GetPoliciesShortAllRequest, Metro_Loyalty_V1_GetPoliciesShortAllResponse>

  func setPolicyShort(
    _ request: Metro_Loyalty_V1_SetPolicyShortRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Loyalty_V1_SetPolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func deletePolicyShort(
    _ request: Metro_Loyalty_V1_DeletePolicyShortRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Loyalty_V1_DeletePolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getPolicyFull(
    _ request: Metro_Loyalty_V1_GetPolicyFullRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Loyalty_V1_GetPolicyFullRequest, Metro_Loyalty_V1_GetPolicyFullResponse>

  func updatePolicyFull(
    _ request: Metro_Loyalty_V1_UpdatePolicyFullRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Loyalty_V1_UpdatePolicyFullRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

extension Metro_Loyalty_V1_LoyaltyPolicyPrivateClientProtocol {
  public var serviceName: String {
    return "metro.loyalty.v1.LoyaltyPolicyPrivate"
  }

  /// Unary call to GetPolicyShort
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPolicyShort.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPolicyShort(
    _ request: Metro_Loyalty_V1_GetPolicyShortRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Loyalty_V1_GetPolicyShortRequest, Metro_Loyalty_V1_GetPolicyShortResponse> {
    return self.makeUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPolicyShortInterceptors() ?? []
    )
  }

  /// Unary call to GetPoliciesShortAll
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPoliciesShortAll.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPoliciesShortAll(
    _ request: Metro_Loyalty_V1_GetPoliciesShortAllRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Loyalty_V1_GetPoliciesShortAllRequest, Metro_Loyalty_V1_GetPoliciesShortAllResponse> {
    return self.makeUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPoliciesShortAll.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPoliciesShortAllInterceptors() ?? []
    )
  }

  /// Unary call to SetPolicyShort
  ///
  /// - Parameters:
  ///   - request: Request to send to SetPolicyShort.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setPolicyShort(
    _ request: Metro_Loyalty_V1_SetPolicyShortRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Loyalty_V1_SetPolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.setPolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPolicyShortInterceptors() ?? []
    )
  }

  /// Unary call to DeletePolicyShort
  ///
  /// - Parameters:
  ///   - request: Request to send to DeletePolicyShort.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deletePolicyShort(
    _ request: Metro_Loyalty_V1_DeletePolicyShortRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Loyalty_V1_DeletePolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.deletePolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeletePolicyShortInterceptors() ?? []
    )
  }

  /// Unary call to GetPolicyFull
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPolicyFull.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPolicyFull(
    _ request: Metro_Loyalty_V1_GetPolicyFullRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Loyalty_V1_GetPolicyFullRequest, Metro_Loyalty_V1_GetPolicyFullResponse> {
    return self.makeUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyFull.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPolicyFullInterceptors() ?? []
    )
  }

  /// Unary call to UpdatePolicyFull
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdatePolicyFull.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updatePolicyFull(
    _ request: Metro_Loyalty_V1_UpdatePolicyFullRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Loyalty_V1_UpdatePolicyFullRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.updatePolicyFull.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdatePolicyFullInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Metro_Loyalty_V1_LoyaltyPolicyPrivateClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Metro_Loyalty_V1_LoyaltyPolicyPrivateNIOClient")
public final class Metro_Loyalty_V1_LoyaltyPolicyPrivateClient: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the metro.loyalty.v1.LoyaltyPolicyPrivate service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Metro_Loyalty_V1_LoyaltyPolicyPrivateNIOClient: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol?

  /// Creates a client for the metro.loyalty.v1.LoyaltyPolicyPrivate service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Metro_Loyalty_V1_LoyaltyPolicyPrivateAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? { get }

  func makeGetPolicyShortCall(
    _ request: Metro_Loyalty_V1_GetPolicyShortRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_GetPolicyShortRequest, Metro_Loyalty_V1_GetPolicyShortResponse>

  func makeGetPoliciesShortAllCall(
    _ request: Metro_Loyalty_V1_GetPoliciesShortAllRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_GetPoliciesShortAllRequest, Metro_Loyalty_V1_GetPoliciesShortAllResponse>

  func makeSetPolicyShortCall(
    _ request: Metro_Loyalty_V1_SetPolicyShortRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_SetPolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeDeletePolicyShortCall(
    _ request: Metro_Loyalty_V1_DeletePolicyShortRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_DeletePolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeGetPolicyFullCall(
    _ request: Metro_Loyalty_V1_GetPolicyFullRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_GetPolicyFullRequest, Metro_Loyalty_V1_GetPolicyFullResponse>

  func makeUpdatePolicyFullCall(
    _ request: Metro_Loyalty_V1_UpdatePolicyFullRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_UpdatePolicyFullRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Loyalty_V1_LoyaltyPolicyPrivateAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.serviceDescriptor
  }

  public var interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetPolicyShortCall(
    _ request: Metro_Loyalty_V1_GetPolicyShortRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_GetPolicyShortRequest, Metro_Loyalty_V1_GetPolicyShortResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPolicyShortInterceptors() ?? []
    )
  }

  public func makeGetPoliciesShortAllCall(
    _ request: Metro_Loyalty_V1_GetPoliciesShortAllRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_GetPoliciesShortAllRequest, Metro_Loyalty_V1_GetPoliciesShortAllResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPoliciesShortAll.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPoliciesShortAllInterceptors() ?? []
    )
  }

  public func makeSetPolicyShortCall(
    _ request: Metro_Loyalty_V1_SetPolicyShortRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_SetPolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.setPolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPolicyShortInterceptors() ?? []
    )
  }

  public func makeDeletePolicyShortCall(
    _ request: Metro_Loyalty_V1_DeletePolicyShortRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_DeletePolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.deletePolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeletePolicyShortInterceptors() ?? []
    )
  }

  public func makeGetPolicyFullCall(
    _ request: Metro_Loyalty_V1_GetPolicyFullRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_GetPolicyFullRequest, Metro_Loyalty_V1_GetPolicyFullResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyFull.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPolicyFullInterceptors() ?? []
    )
  }

  public func makeUpdatePolicyFullCall(
    _ request: Metro_Loyalty_V1_UpdatePolicyFullRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Loyalty_V1_UpdatePolicyFullRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.updatePolicyFull.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdatePolicyFullInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Loyalty_V1_LoyaltyPolicyPrivateAsyncClientProtocol {
  public func getPolicyShort(
    _ request: Metro_Loyalty_V1_GetPolicyShortRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Loyalty_V1_GetPolicyShortResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPolicyShortInterceptors() ?? []
    )
  }

  public func getPoliciesShortAll(
    _ request: Metro_Loyalty_V1_GetPoliciesShortAllRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Loyalty_V1_GetPoliciesShortAllResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPoliciesShortAll.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPoliciesShortAllInterceptors() ?? []
    )
  }

  public func setPolicyShort(
    _ request: Metro_Loyalty_V1_SetPolicyShortRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.setPolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetPolicyShortInterceptors() ?? []
    )
  }

  public func deletePolicyShort(
    _ request: Metro_Loyalty_V1_DeletePolicyShortRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.deletePolicyShort.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeletePolicyShortInterceptors() ?? []
    )
  }

  public func getPolicyFull(
    _ request: Metro_Loyalty_V1_GetPolicyFullRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Loyalty_V1_GetPolicyFullResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyFull.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPolicyFullInterceptors() ?? []
    )
  }

  public func updatePolicyFull(
    _ request: Metro_Loyalty_V1_UpdatePolicyFullRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.updatePolicyFull.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdatePolicyFullInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Metro_Loyalty_V1_LoyaltyPolicyPrivateAsyncClient: Metro_Loyalty_V1_LoyaltyPolicyPrivateAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Metro_Loyalty_V1_LoyaltyPolicyPrivateClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'getPolicyShort'.
  func makeGetPolicyShortInterceptors() -> [ClientInterceptor<Metro_Loyalty_V1_GetPolicyShortRequest, Metro_Loyalty_V1_GetPolicyShortResponse>]

  /// - Returns: Interceptors to use when invoking 'getPoliciesShortAll'.
  func makeGetPoliciesShortAllInterceptors() -> [ClientInterceptor<Metro_Loyalty_V1_GetPoliciesShortAllRequest, Metro_Loyalty_V1_GetPoliciesShortAllResponse>]

  /// - Returns: Interceptors to use when invoking 'setPolicyShort'.
  func makeSetPolicyShortInterceptors() -> [ClientInterceptor<Metro_Loyalty_V1_SetPolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'deletePolicyShort'.
  func makeDeletePolicyShortInterceptors() -> [ClientInterceptor<Metro_Loyalty_V1_DeletePolicyShortRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'getPolicyFull'.
  func makeGetPolicyFullInterceptors() -> [ClientInterceptor<Metro_Loyalty_V1_GetPolicyFullRequest, Metro_Loyalty_V1_GetPolicyFullResponse>]

  /// - Returns: Interceptors to use when invoking 'updatePolicyFull'.
  func makeUpdatePolicyFullInterceptors() -> [ClientInterceptor<Metro_Loyalty_V1_UpdatePolicyFullRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}

public enum Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LoyaltyPolicyPrivate",
    fullName: "metro.loyalty.v1.LoyaltyPolicyPrivate",
    methods: [
      Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyShort,
      Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPoliciesShortAll,
      Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.setPolicyShort,
      Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.deletePolicyShort,
      Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.getPolicyFull,
      Metro_Loyalty_V1_LoyaltyPolicyPrivateClientMetadata.Methods.updatePolicyFull,
    ]
  )

  public enum Methods {
    public static let getPolicyShort = GRPCMethodDescriptor(
      name: "GetPolicyShort",
      path: "/metro.loyalty.v1.LoyaltyPolicyPrivate/GetPolicyShort",
      type: GRPCCallType.unary
    )

    public static let getPoliciesShortAll = GRPCMethodDescriptor(
      name: "GetPoliciesShortAll",
      path: "/metro.loyalty.v1.LoyaltyPolicyPrivate/GetPoliciesShortAll",
      type: GRPCCallType.unary
    )

    public static let setPolicyShort = GRPCMethodDescriptor(
      name: "SetPolicyShort",
      path: "/metro.loyalty.v1.LoyaltyPolicyPrivate/SetPolicyShort",
      type: GRPCCallType.unary
    )

    public static let deletePolicyShort = GRPCMethodDescriptor(
      name: "DeletePolicyShort",
      path: "/metro.loyalty.v1.LoyaltyPolicyPrivate/DeletePolicyShort",
      type: GRPCCallType.unary
    )

    public static let getPolicyFull = GRPCMethodDescriptor(
      name: "GetPolicyFull",
      path: "/metro.loyalty.v1.LoyaltyPolicyPrivate/GetPolicyFull",
      type: GRPCCallType.unary
    )

    public static let updatePolicyFull = GRPCMethodDescriptor(
      name: "UpdatePolicyFull",
      path: "/metro.loyalty.v1.LoyaltyPolicyPrivate/UpdatePolicyFull",
      type: GRPCCallType.unary
    )
  }
}

