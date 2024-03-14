//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: metro_group_generation/groupGeneration.public.v1.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Cz_Makro_Group_Generation_V1_GroupGeneratorClient`, then call methods of this protocol to make API calls.
public protocol Cz_Makro_Group_Generation_V1_GroupGeneratorClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? { get }

  func generate(
    _ request: Cz_Makro_Group_Generation_V1_GenerateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Cz_Makro_Group_Generation_V1_GenerateRequest, Cz_Makro_Group_Generation_V1_GenerateResponse>
}

extension Cz_Makro_Group_Generation_V1_GroupGeneratorClientProtocol {
  public var serviceName: String {
    return "cz.makro.group.generation.v1.GroupGenerator"
  }

  /// Unary call to Generate
  ///
  /// - Parameters:
  ///   - request: Request to send to Generate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func generate(
    _ request: Cz_Makro_Group_Generation_V1_GenerateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Cz_Makro_Group_Generation_V1_GenerateRequest, Cz_Makro_Group_Generation_V1_GenerateResponse> {
    return self.makeUnaryCall(
      path: Cz_Makro_Group_Generation_V1_GroupGeneratorClientMetadata.Methods.generate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGenerateInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Cz_Makro_Group_Generation_V1_GroupGeneratorClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Cz_Makro_Group_Generation_V1_GroupGeneratorNIOClient")
public final class Cz_Makro_Group_Generation_V1_GroupGeneratorClient: Cz_Makro_Group_Generation_V1_GroupGeneratorClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the cz.makro.group.generation.v1.GroupGenerator service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Cz_Makro_Group_Generation_V1_GroupGeneratorNIOClient: Cz_Makro_Group_Generation_V1_GroupGeneratorClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol?

  /// Creates a client for the cz.makro.group.generation.v1.GroupGenerator service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Cz_Makro_Group_Generation_V1_GroupGeneratorAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? { get }

  func makeGenerateCall(
    _ request: Cz_Makro_Group_Generation_V1_GenerateRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Cz_Makro_Group_Generation_V1_GenerateRequest, Cz_Makro_Group_Generation_V1_GenerateResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cz_Makro_Group_Generation_V1_GroupGeneratorAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Cz_Makro_Group_Generation_V1_GroupGeneratorClientMetadata.serviceDescriptor
  }

  public var interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGenerateCall(
    _ request: Cz_Makro_Group_Generation_V1_GenerateRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Cz_Makro_Group_Generation_V1_GenerateRequest, Cz_Makro_Group_Generation_V1_GenerateResponse> {
    return self.makeAsyncUnaryCall(
      path: Cz_Makro_Group_Generation_V1_GroupGeneratorClientMetadata.Methods.generate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGenerateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Cz_Makro_Group_Generation_V1_GroupGeneratorAsyncClientProtocol {
  public func generate(
    _ request: Cz_Makro_Group_Generation_V1_GenerateRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Cz_Makro_Group_Generation_V1_GenerateResponse {
    return try await self.performAsyncUnaryCall(
      path: Cz_Makro_Group_Generation_V1_GroupGeneratorClientMetadata.Methods.generate.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGenerateInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Cz_Makro_Group_Generation_V1_GroupGeneratorAsyncClient: Cz_Makro_Group_Generation_V1_GroupGeneratorAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Cz_Makro_Group_Generation_V1_GroupGeneratorClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'generate'.
  func makeGenerateInterceptors() -> [ClientInterceptor<Cz_Makro_Group_Generation_V1_GenerateRequest, Cz_Makro_Group_Generation_V1_GenerateResponse>]
}

public enum Cz_Makro_Group_Generation_V1_GroupGeneratorClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "GroupGenerator",
    fullName: "cz.makro.group.generation.v1.GroupGenerator",
    methods: [
      Cz_Makro_Group_Generation_V1_GroupGeneratorClientMetadata.Methods.generate,
    ]
  )

  public enum Methods {
    public static let generate = GRPCMethodDescriptor(
      name: "Generate",
      path: "/cz.makro.group.generation.v1.GroupGenerator/Generate",
      type: GRPCCallType.unary
    )
  }
}

