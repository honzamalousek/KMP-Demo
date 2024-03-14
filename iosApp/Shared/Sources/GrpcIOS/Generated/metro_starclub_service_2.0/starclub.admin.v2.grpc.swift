//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: metro_starclub_service_2.0/starclub.admin.v2.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Metro_Starclub_V2_StarClubAdminClient`, then call methods of this protocol to make API calls.
public protocol Metro_Starclub_V2_StarClubAdminClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? { get }

  func setCampaign(
    _ request: Metro_Starclub_V2_SetCampaignRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_SetCampaignRequest, Metro_Starclub_V2_SetCampaignResponse>

  func getCampaignById(
    _ request: Metro_Starclub_V2_GetCampaignByIdRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_GetCampaignByIdRequest, Metro_Starclub_V2_GetCampaignByIdResponse>

  func getCampaigns(
    _ request: Metro_Starclub_V2_GetCampaignsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_GetCampaignsRequest, Metro_Starclub_V2_GetCampaignsResponse>

  func pagedAccounts(
    _ request: Metro_Starclub_V2_PagedAccountsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_PagedAccountsRequest, Metro_Starclub_V2_PagedAccountsResponse>

  func getAccount(
    _ request: Metro_Starclub_V2_GetAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_GetAccountRequest, Metro_Starclub_V2_GetAccountResponse>

  func addAccountCorrection(
    _ request: Metro_Starclub_V2_AddAccountCorrectionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Metro_Starclub_V2_AddAccountCorrectionRequest, Metro_Starclub_V2_AddAccountCorrectionResponse>

  func streamPolicyApproves(
    _ request: Metro_Starclub_V2_StreamPolicyApprovesRequest,
    callOptions: CallOptions?,
    handler: @escaping (Metro_Starclub_V2_StreamPolicyApprovesResponse) -> Void
  ) -> ServerStreamingCall<Metro_Starclub_V2_StreamPolicyApprovesRequest, Metro_Starclub_V2_StreamPolicyApprovesResponse>

  func streamSpendingMovements(
    _ request: Metro_Starclub_V2_StreamSpendingMovementsRequest,
    callOptions: CallOptions?,
    handler: @escaping (Metro_Starclub_V2_StreamSpendingMovementsResponse) -> Void
  ) -> ServerStreamingCall<Metro_Starclub_V2_StreamSpendingMovementsRequest, Metro_Starclub_V2_StreamSpendingMovementsResponse>
}

extension Metro_Starclub_V2_StarClubAdminClientProtocol {
  public var serviceName: String {
    return "metro.starclub.v2.StarClubAdmin"
  }

  /// Unary call to SetCampaign
  ///
  /// - Parameters:
  ///   - request: Request to send to SetCampaign.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setCampaign(
    _ request: Metro_Starclub_V2_SetCampaignRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_SetCampaignRequest, Metro_Starclub_V2_SetCampaignResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.setCampaign.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetCampaignInterceptors() ?? []
    )
  }

  /// Unary call to GetCampaignById
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCampaignById.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCampaignById(
    _ request: Metro_Starclub_V2_GetCampaignByIdRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_GetCampaignByIdRequest, Metro_Starclub_V2_GetCampaignByIdResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaignById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCampaignByIdInterceptors() ?? []
    )
  }

  /// Get project campaigns.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCampaigns.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCampaigns(
    _ request: Metro_Starclub_V2_GetCampaignsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_GetCampaignsRequest, Metro_Starclub_V2_GetCampaignsResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaigns.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCampaignsInterceptors() ?? []
    )
  }

  /// Paged accounts per campaign
  ///
  /// - Parameters:
  ///   - request: Request to send to PagedAccounts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func pagedAccounts(
    _ request: Metro_Starclub_V2_PagedAccountsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_PagedAccountsRequest, Metro_Starclub_V2_PagedAccountsResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.pagedAccounts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePagedAccountsInterceptors() ?? []
    )
  }

  /// Get single account with movements.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAccount(
    _ request: Metro_Starclub_V2_GetAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_GetAccountRequest, Metro_Starclub_V2_GetAccountResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAccountInterceptors() ?? []
    )
  }

  /// Add correction movement to account.
  ///
  /// - Parameters:
  ///   - request: Request to send to AddAccountCorrection.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func addAccountCorrection(
    _ request: Metro_Starclub_V2_AddAccountCorrectionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Metro_Starclub_V2_AddAccountCorrectionRequest, Metro_Starclub_V2_AddAccountCorrectionResponse> {
    return self.makeUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.addAccountCorrection.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAddAccountCorrectionInterceptors() ?? []
    )
  }

  /// Stream all policy approves for export to 3rd party.
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamPolicyApproves.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamPolicyApproves(
    _ request: Metro_Starclub_V2_StreamPolicyApprovesRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Metro_Starclub_V2_StreamPolicyApprovesResponse) -> Void
  ) -> ServerStreamingCall<Metro_Starclub_V2_StreamPolicyApprovesRequest, Metro_Starclub_V2_StreamPolicyApprovesResponse> {
    return self.makeServerStreamingCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamPolicyApproves.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamPolicyApprovesInterceptors() ?? [],
      handler: handler
    )
  }

  /// Stream all projects spending movements for all campaigns.
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamSpendingMovements.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamSpendingMovements(
    _ request: Metro_Starclub_V2_StreamSpendingMovementsRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Metro_Starclub_V2_StreamSpendingMovementsResponse) -> Void
  ) -> ServerStreamingCall<Metro_Starclub_V2_StreamSpendingMovementsRequest, Metro_Starclub_V2_StreamSpendingMovementsResponse> {
    return self.makeServerStreamingCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamSpendingMovements.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamSpendingMovementsInterceptors() ?? [],
      handler: handler
    )
  }
}

@available(*, deprecated)
extension Metro_Starclub_V2_StarClubAdminClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Metro_Starclub_V2_StarClubAdminNIOClient")
public final class Metro_Starclub_V2_StarClubAdminClient: Metro_Starclub_V2_StarClubAdminClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the metro.starclub.v2.StarClubAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Metro_Starclub_V2_StarClubAdminNIOClient: Metro_Starclub_V2_StarClubAdminClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol?

  /// Creates a client for the metro.starclub.v2.StarClubAdmin service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Metro_Starclub_V2_StarClubAdminAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? { get }

  func makeSetCampaignCall(
    _ request: Metro_Starclub_V2_SetCampaignRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_SetCampaignRequest, Metro_Starclub_V2_SetCampaignResponse>

  func makeGetCampaignByIDCall(
    _ request: Metro_Starclub_V2_GetCampaignByIdRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetCampaignByIdRequest, Metro_Starclub_V2_GetCampaignByIdResponse>

  func makeGetCampaignsCall(
    _ request: Metro_Starclub_V2_GetCampaignsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetCampaignsRequest, Metro_Starclub_V2_GetCampaignsResponse>

  func makePagedAccountsCall(
    _ request: Metro_Starclub_V2_PagedAccountsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_PagedAccountsRequest, Metro_Starclub_V2_PagedAccountsResponse>

  func makeGetAccountCall(
    _ request: Metro_Starclub_V2_GetAccountRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetAccountRequest, Metro_Starclub_V2_GetAccountResponse>

  func makeAddAccountCorrectionCall(
    _ request: Metro_Starclub_V2_AddAccountCorrectionRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_AddAccountCorrectionRequest, Metro_Starclub_V2_AddAccountCorrectionResponse>

  func makeStreamPolicyApprovesCall(
    _ request: Metro_Starclub_V2_StreamPolicyApprovesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<Metro_Starclub_V2_StreamPolicyApprovesRequest, Metro_Starclub_V2_StreamPolicyApprovesResponse>

  func makeStreamSpendingMovementsCall(
    _ request: Metro_Starclub_V2_StreamSpendingMovementsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<Metro_Starclub_V2_StreamSpendingMovementsRequest, Metro_Starclub_V2_StreamSpendingMovementsResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Starclub_V2_StarClubAdminAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Metro_Starclub_V2_StarClubAdminClientMetadata.serviceDescriptor
  }

  public var interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeSetCampaignCall(
    _ request: Metro_Starclub_V2_SetCampaignRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_SetCampaignRequest, Metro_Starclub_V2_SetCampaignResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.setCampaign.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetCampaignInterceptors() ?? []
    )
  }

  public func makeGetCampaignByIDCall(
    _ request: Metro_Starclub_V2_GetCampaignByIdRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetCampaignByIdRequest, Metro_Starclub_V2_GetCampaignByIdResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaignById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCampaignByIdInterceptors() ?? []
    )
  }

  public func makeGetCampaignsCall(
    _ request: Metro_Starclub_V2_GetCampaignsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetCampaignsRequest, Metro_Starclub_V2_GetCampaignsResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaigns.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCampaignsInterceptors() ?? []
    )
  }

  public func makePagedAccountsCall(
    _ request: Metro_Starclub_V2_PagedAccountsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_PagedAccountsRequest, Metro_Starclub_V2_PagedAccountsResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.pagedAccounts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePagedAccountsInterceptors() ?? []
    )
  }

  public func makeGetAccountCall(
    _ request: Metro_Starclub_V2_GetAccountRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_GetAccountRequest, Metro_Starclub_V2_GetAccountResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAccountInterceptors() ?? []
    )
  }

  public func makeAddAccountCorrectionCall(
    _ request: Metro_Starclub_V2_AddAccountCorrectionRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Metro_Starclub_V2_AddAccountCorrectionRequest, Metro_Starclub_V2_AddAccountCorrectionResponse> {
    return self.makeAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.addAccountCorrection.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAddAccountCorrectionInterceptors() ?? []
    )
  }

  public func makeStreamPolicyApprovesCall(
    _ request: Metro_Starclub_V2_StreamPolicyApprovesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<Metro_Starclub_V2_StreamPolicyApprovesRequest, Metro_Starclub_V2_StreamPolicyApprovesResponse> {
    return self.makeAsyncServerStreamingCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamPolicyApproves.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamPolicyApprovesInterceptors() ?? []
    )
  }

  public func makeStreamSpendingMovementsCall(
    _ request: Metro_Starclub_V2_StreamSpendingMovementsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<Metro_Starclub_V2_StreamSpendingMovementsRequest, Metro_Starclub_V2_StreamSpendingMovementsResponse> {
    return self.makeAsyncServerStreamingCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamSpendingMovements.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamSpendingMovementsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Metro_Starclub_V2_StarClubAdminAsyncClientProtocol {
  public func setCampaign(
    _ request: Metro_Starclub_V2_SetCampaignRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_SetCampaignResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.setCampaign.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetCampaignInterceptors() ?? []
    )
  }

  public func getCampaignById(
    _ request: Metro_Starclub_V2_GetCampaignByIdRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_GetCampaignByIdResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaignById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCampaignByIdInterceptors() ?? []
    )
  }

  public func getCampaigns(
    _ request: Metro_Starclub_V2_GetCampaignsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_GetCampaignsResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaigns.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCampaignsInterceptors() ?? []
    )
  }

  public func pagedAccounts(
    _ request: Metro_Starclub_V2_PagedAccountsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_PagedAccountsResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.pagedAccounts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePagedAccountsInterceptors() ?? []
    )
  }

  public func getAccount(
    _ request: Metro_Starclub_V2_GetAccountRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_GetAccountResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getAccount.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetAccountInterceptors() ?? []
    )
  }

  public func addAccountCorrection(
    _ request: Metro_Starclub_V2_AddAccountCorrectionRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Metro_Starclub_V2_AddAccountCorrectionResponse {
    return try await self.performAsyncUnaryCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.addAccountCorrection.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAddAccountCorrectionInterceptors() ?? []
    )
  }

  public func streamPolicyApproves(
    _ request: Metro_Starclub_V2_StreamPolicyApprovesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Metro_Starclub_V2_StreamPolicyApprovesResponse> {
    return self.performAsyncServerStreamingCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamPolicyApproves.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamPolicyApprovesInterceptors() ?? []
    )
  }

  public func streamSpendingMovements(
    _ request: Metro_Starclub_V2_StreamSpendingMovementsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Metro_Starclub_V2_StreamSpendingMovementsResponse> {
    return self.performAsyncServerStreamingCall(
      path: Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamSpendingMovements.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeStreamSpendingMovementsInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Metro_Starclub_V2_StarClubAdminAsyncClient: Metro_Starclub_V2_StarClubAdminAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Metro_Starclub_V2_StarClubAdminClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'setCampaign'.
  func makeSetCampaignInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_SetCampaignRequest, Metro_Starclub_V2_SetCampaignResponse>]

  /// - Returns: Interceptors to use when invoking 'getCampaignById'.
  func makeGetCampaignByIdInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_GetCampaignByIdRequest, Metro_Starclub_V2_GetCampaignByIdResponse>]

  /// - Returns: Interceptors to use when invoking 'getCampaigns'.
  func makeGetCampaignsInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_GetCampaignsRequest, Metro_Starclub_V2_GetCampaignsResponse>]

  /// - Returns: Interceptors to use when invoking 'pagedAccounts'.
  func makePagedAccountsInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_PagedAccountsRequest, Metro_Starclub_V2_PagedAccountsResponse>]

  /// - Returns: Interceptors to use when invoking 'getAccount'.
  func makeGetAccountInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_GetAccountRequest, Metro_Starclub_V2_GetAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'addAccountCorrection'.
  func makeAddAccountCorrectionInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_AddAccountCorrectionRequest, Metro_Starclub_V2_AddAccountCorrectionResponse>]

  /// - Returns: Interceptors to use when invoking 'streamPolicyApproves'.
  func makeStreamPolicyApprovesInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_StreamPolicyApprovesRequest, Metro_Starclub_V2_StreamPolicyApprovesResponse>]

  /// - Returns: Interceptors to use when invoking 'streamSpendingMovements'.
  func makeStreamSpendingMovementsInterceptors() -> [ClientInterceptor<Metro_Starclub_V2_StreamSpendingMovementsRequest, Metro_Starclub_V2_StreamSpendingMovementsResponse>]
}

public enum Metro_Starclub_V2_StarClubAdminClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "StarClubAdmin",
    fullName: "metro.starclub.v2.StarClubAdmin",
    methods: [
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.setCampaign,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaignById,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getCampaigns,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.pagedAccounts,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.getAccount,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.addAccountCorrection,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamPolicyApproves,
      Metro_Starclub_V2_StarClubAdminClientMetadata.Methods.streamSpendingMovements,
    ]
  )

  public enum Methods {
    public static let setCampaign = GRPCMethodDescriptor(
      name: "SetCampaign",
      path: "/metro.starclub.v2.StarClubAdmin/SetCampaign",
      type: GRPCCallType.unary
    )

    public static let getCampaignById = GRPCMethodDescriptor(
      name: "GetCampaignById",
      path: "/metro.starclub.v2.StarClubAdmin/GetCampaignById",
      type: GRPCCallType.unary
    )

    public static let getCampaigns = GRPCMethodDescriptor(
      name: "GetCampaigns",
      path: "/metro.starclub.v2.StarClubAdmin/GetCampaigns",
      type: GRPCCallType.unary
    )

    public static let pagedAccounts = GRPCMethodDescriptor(
      name: "PagedAccounts",
      path: "/metro.starclub.v2.StarClubAdmin/PagedAccounts",
      type: GRPCCallType.unary
    )

    public static let getAccount = GRPCMethodDescriptor(
      name: "GetAccount",
      path: "/metro.starclub.v2.StarClubAdmin/GetAccount",
      type: GRPCCallType.unary
    )

    public static let addAccountCorrection = GRPCMethodDescriptor(
      name: "AddAccountCorrection",
      path: "/metro.starclub.v2.StarClubAdmin/AddAccountCorrection",
      type: GRPCCallType.unary
    )

    public static let streamPolicyApproves = GRPCMethodDescriptor(
      name: "StreamPolicyApproves",
      path: "/metro.starclub.v2.StarClubAdmin/StreamPolicyApproves",
      type: GRPCCallType.serverStreaming
    )

    public static let streamSpendingMovements = GRPCMethodDescriptor(
      name: "StreamSpendingMovements",
      path: "/metro.starclub.v2.StarClubAdmin/StreamSpendingMovements",
      type: GRPCCallType.serverStreaming
    )
  }
}

