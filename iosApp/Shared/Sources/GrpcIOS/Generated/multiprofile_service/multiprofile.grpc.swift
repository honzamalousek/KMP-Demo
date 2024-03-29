//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: multiprofile_service/multiprofile.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Private service for adding authenticated users...
///
/// Usage: instantiate `Appelis_Multiprofile_V1_AdminProfilesClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Multiprofile_V1_AdminProfilesClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? { get }

  func createProfile(
    _ request: Appelis_Multiprofile_V1_CreateProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Multiprofile_V1_CreateProfileRequest, Appelis_Multiprofile_V1_Profile>

  func createProfiles(
    _ request: Appelis_Multiprofile_V1_CreateProfilesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Multiprofile_V1_CreateProfilesRequest, Appelis_Multiprofile_V1_CreateProfilesResponse>

  func deleteUserProfiles(
    _ request: Appelis_Multiprofile_V1_DeleteUserProfilesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Multiprofile_V1_DeleteUserProfilesRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

extension Appelis_Multiprofile_V1_AdminProfilesClientProtocol {
  public var serviceName: String {
    return "appelis.multiprofile.v1.AdminProfiles"
  }

  /// Add profile(user) to device authenticated profiles. And also login user to that profile.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createProfile(
    _ request: Appelis_Multiprofile_V1_CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Multiprofile_V1_CreateProfileRequest, Appelis_Multiprofile_V1_Profile> {
    return self.makeUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfileInterceptors() ?? []
    )
  }

  /// Unary call to CreateProfiles
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateProfiles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createProfiles(
    _ request: Appelis_Multiprofile_V1_CreateProfilesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Multiprofile_V1_CreateProfilesRequest, Appelis_Multiprofile_V1_CreateProfilesResponse> {
    return self.makeUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfiles.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfilesInterceptors() ?? []
    )
  }

  /// Unary call to DeleteUserProfiles
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteUserProfiles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteUserProfiles(
    _ request: Appelis_Multiprofile_V1_DeleteUserProfilesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Multiprofile_V1_DeleteUserProfilesRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.deleteUserProfiles.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteUserProfilesInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Multiprofile_V1_AdminProfilesClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Multiprofile_V1_AdminProfilesNIOClient")
public final class Appelis_Multiprofile_V1_AdminProfilesClient: Appelis_Multiprofile_V1_AdminProfilesClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.multiprofile.v1.AdminProfiles service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Multiprofile_V1_AdminProfilesNIOClient: Appelis_Multiprofile_V1_AdminProfilesClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.multiprofile.v1.AdminProfiles service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Private service for adding authenticated users...
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Multiprofile_V1_AdminProfilesAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? { get }

  func makeCreateProfileCall(
    _ request: Appelis_Multiprofile_V1_CreateProfileRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_CreateProfileRequest, Appelis_Multiprofile_V1_Profile>

  func makeCreateProfilesCall(
    _ request: Appelis_Multiprofile_V1_CreateProfilesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_CreateProfilesRequest, Appelis_Multiprofile_V1_CreateProfilesResponse>

  func makeDeleteUserProfilesCall(
    _ request: Appelis_Multiprofile_V1_DeleteUserProfilesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_DeleteUserProfilesRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Multiprofile_V1_AdminProfilesAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Multiprofile_V1_AdminProfilesClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeCreateProfileCall(
    _ request: Appelis_Multiprofile_V1_CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_CreateProfileRequest, Appelis_Multiprofile_V1_Profile> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfileInterceptors() ?? []
    )
  }

  public func makeCreateProfilesCall(
    _ request: Appelis_Multiprofile_V1_CreateProfilesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_CreateProfilesRequest, Appelis_Multiprofile_V1_CreateProfilesResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfiles.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfilesInterceptors() ?? []
    )
  }

  public func makeDeleteUserProfilesCall(
    _ request: Appelis_Multiprofile_V1_DeleteUserProfilesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_DeleteUserProfilesRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.deleteUserProfiles.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteUserProfilesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Multiprofile_V1_AdminProfilesAsyncClientProtocol {
  public func createProfile(
    _ request: Appelis_Multiprofile_V1_CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Multiprofile_V1_Profile {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfileInterceptors() ?? []
    )
  }

  public func createProfiles(
    _ request: Appelis_Multiprofile_V1_CreateProfilesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Multiprofile_V1_CreateProfilesResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfiles.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfilesInterceptors() ?? []
    )
  }

  public func deleteUserProfiles(
    _ request: Appelis_Multiprofile_V1_DeleteUserProfilesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.deleteUserProfiles.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteUserProfilesInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Multiprofile_V1_AdminProfilesAsyncClient: Appelis_Multiprofile_V1_AdminProfilesAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Multiprofile_V1_AdminProfilesClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'createProfile'.
  func makeCreateProfileInterceptors() -> [ClientInterceptor<Appelis_Multiprofile_V1_CreateProfileRequest, Appelis_Multiprofile_V1_Profile>]

  /// - Returns: Interceptors to use when invoking 'createProfiles'.
  func makeCreateProfilesInterceptors() -> [ClientInterceptor<Appelis_Multiprofile_V1_CreateProfilesRequest, Appelis_Multiprofile_V1_CreateProfilesResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteUserProfiles'.
  func makeDeleteUserProfilesInterceptors() -> [ClientInterceptor<Appelis_Multiprofile_V1_DeleteUserProfilesRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}

public enum Appelis_Multiprofile_V1_AdminProfilesClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "AdminProfiles",
    fullName: "appelis.multiprofile.v1.AdminProfiles",
    methods: [
      Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfile,
      Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.createProfiles,
      Appelis_Multiprofile_V1_AdminProfilesClientMetadata.Methods.deleteUserProfiles,
    ]
  )

  public enum Methods {
    public static let createProfile = GRPCMethodDescriptor(
      name: "CreateProfile",
      path: "/appelis.multiprofile.v1.AdminProfiles/CreateProfile",
      type: GRPCCallType.unary
    )

    public static let createProfiles = GRPCMethodDescriptor(
      name: "CreateProfiles",
      path: "/appelis.multiprofile.v1.AdminProfiles/CreateProfiles",
      type: GRPCCallType.unary
    )

    public static let deleteUserProfiles = GRPCMethodDescriptor(
      name: "DeleteUserProfiles",
      path: "/appelis.multiprofile.v1.AdminProfiles/DeleteUserProfiles",
      type: GRPCCallType.unary
    )
  }
}

/// Public Service for devices to list profiles attached to device id.
///
/// Usage: instantiate `Appelis_Multiprofile_V1_DeviceProfilesClient`, then call methods of this protocol to make API calls.
public protocol Appelis_Multiprofile_V1_DeviceProfilesClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? { get }

  func logIn(
    _ request: Appelis_Multiprofile_V1_LogInRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Multiprofile_V1_LogInRequest, Appelis_Multiprofile_V1_LogInResponse>

  func logout(
    _ request: Appelis_Multiprofile_V1_LogoutRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Multiprofile_V1_LogoutRequest, Appelis_Multiprofile_V1_LogoutResponse>

  func logoutAll(
    _ request: Appelis_Identity_Common_V1_Token,
    callOptions: CallOptions?
  ) -> UnaryCall<Appelis_Identity_Common_V1_Token, Appelis_Multiprofile_V1_LogoutResponse>
}

extension Appelis_Multiprofile_V1_DeviceProfilesClientProtocol {
  public var serviceName: String {
    return "appelis.multiprofile.v1.DeviceProfiles"
  }

  /// Login profile user on selected profile defined by id.
  ///
  /// - Parameters:
  ///   - request: Request to send to LogIn.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func logIn(
    _ request: Appelis_Multiprofile_V1_LogInRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Multiprofile_V1_LogInRequest, Appelis_Multiprofile_V1_LogInResponse> {
    return self.makeUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logIn.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogInInterceptors() ?? []
    )
  }

  /// Log out user in auth server and deletes profile
  ///
  /// - Parameters:
  ///   - request: Request to send to Logout.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func logout(
    _ request: Appelis_Multiprofile_V1_LogoutRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Multiprofile_V1_LogoutRequest, Appelis_Multiprofile_V1_LogoutResponse> {
    return self.makeUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logout.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutInterceptors() ?? []
    )
  }

  /// Log out user in auth server and delete all profiles
  ///
  /// - Parameters:
  ///   - request: Request to send to LogoutAll.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func logoutAll(
    _ request: Appelis_Identity_Common_V1_Token,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Appelis_Identity_Common_V1_Token, Appelis_Multiprofile_V1_LogoutResponse> {
    return self.makeUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logoutAll.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutAllInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Appelis_Multiprofile_V1_DeviceProfilesClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Appelis_Multiprofile_V1_DeviceProfilesNIOClient")
public final class Appelis_Multiprofile_V1_DeviceProfilesClient: Appelis_Multiprofile_V1_DeviceProfilesClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the appelis.multiprofile.v1.DeviceProfiles service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Appelis_Multiprofile_V1_DeviceProfilesNIOClient: Appelis_Multiprofile_V1_DeviceProfilesClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol?

  /// Creates a client for the appelis.multiprofile.v1.DeviceProfiles service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Public Service for devices to list profiles attached to device id.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Appelis_Multiprofile_V1_DeviceProfilesAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? { get }

  func makeLogInCall(
    _ request: Appelis_Multiprofile_V1_LogInRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_LogInRequest, Appelis_Multiprofile_V1_LogInResponse>

  func makeLogoutCall(
    _ request: Appelis_Multiprofile_V1_LogoutRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_LogoutRequest, Appelis_Multiprofile_V1_LogoutResponse>

  func makeLogoutAllCall(
    _ request: Appelis_Identity_Common_V1_Token,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Appelis_Identity_Common_V1_Token, Appelis_Multiprofile_V1_LogoutResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Multiprofile_V1_DeviceProfilesAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.serviceDescriptor
  }

  public var interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeLogInCall(
    _ request: Appelis_Multiprofile_V1_LogInRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_LogInRequest, Appelis_Multiprofile_V1_LogInResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logIn.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogInInterceptors() ?? []
    )
  }

  public func makeLogoutCall(
    _ request: Appelis_Multiprofile_V1_LogoutRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Multiprofile_V1_LogoutRequest, Appelis_Multiprofile_V1_LogoutResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logout.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutInterceptors() ?? []
    )
  }

  public func makeLogoutAllCall(
    _ request: Appelis_Identity_Common_V1_Token,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Appelis_Identity_Common_V1_Token, Appelis_Multiprofile_V1_LogoutResponse> {
    return self.makeAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logoutAll.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutAllInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Appelis_Multiprofile_V1_DeviceProfilesAsyncClientProtocol {
  public func logIn(
    _ request: Appelis_Multiprofile_V1_LogInRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Multiprofile_V1_LogInResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logIn.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogInInterceptors() ?? []
    )
  }

  public func logout(
    _ request: Appelis_Multiprofile_V1_LogoutRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Multiprofile_V1_LogoutResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logout.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutInterceptors() ?? []
    )
  }

  public func logoutAll(
    _ request: Appelis_Identity_Common_V1_Token,
    callOptions: CallOptions? = nil
  ) async throws -> Appelis_Multiprofile_V1_LogoutResponse {
    return try await self.performAsyncUnaryCall(
      path: Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logoutAll.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLogoutAllInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Appelis_Multiprofile_V1_DeviceProfilesAsyncClient: Appelis_Multiprofile_V1_DeviceProfilesAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Appelis_Multiprofile_V1_DeviceProfilesClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'logIn'.
  func makeLogInInterceptors() -> [ClientInterceptor<Appelis_Multiprofile_V1_LogInRequest, Appelis_Multiprofile_V1_LogInResponse>]

  /// - Returns: Interceptors to use when invoking 'logout'.
  func makeLogoutInterceptors() -> [ClientInterceptor<Appelis_Multiprofile_V1_LogoutRequest, Appelis_Multiprofile_V1_LogoutResponse>]

  /// - Returns: Interceptors to use when invoking 'logoutAll'.
  func makeLogoutAllInterceptors() -> [ClientInterceptor<Appelis_Identity_Common_V1_Token, Appelis_Multiprofile_V1_LogoutResponse>]
}

public enum Appelis_Multiprofile_V1_DeviceProfilesClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "DeviceProfiles",
    fullName: "appelis.multiprofile.v1.DeviceProfiles",
    methods: [
      Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logIn,
      Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logout,
      Appelis_Multiprofile_V1_DeviceProfilesClientMetadata.Methods.logoutAll,
    ]
  )

  public enum Methods {
    public static let logIn = GRPCMethodDescriptor(
      name: "LogIn",
      path: "/appelis.multiprofile.v1.DeviceProfiles/LogIn",
      type: GRPCCallType.unary
    )

    public static let logout = GRPCMethodDescriptor(
      name: "Logout",
      path: "/appelis.multiprofile.v1.DeviceProfiles/Logout",
      type: GRPCCallType.unary
    )

    public static let logoutAll = GRPCMethodDescriptor(
      name: "LogoutAll",
      path: "/appelis.multiprofile.v1.DeviceProfiles/LogoutAll",
      type: GRPCCallType.unary
    )
  }
}

