// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: multiprofile_service/multiprofile.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Appelis_Multiprofile_V1_CreateProfilesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Appelis_Multiprofile_V1_Profile] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_V1_CreateProfilesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Appelis_Multiprofile_V1_CreateProfileRequest] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_V1_DeleteUserProfilesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var mobileUserIds: [Int64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_V1_CreateProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var deviceID: Int64 = 0

  public var mobileUserID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_V1_LogoutResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional if there was no error, should be nil.
  public var payload: Appelis_Multiprofile_V1_LogoutResponse.OneOf_Payload? = nil

  public var error: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .error(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .error(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Optional if there was no error, should be nil.
  public enum OneOf_Payload: Equatable {
    case error(Appelis_Identity_Common_V1_TokenError)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Multiprofile_V1_LogoutResponse.OneOf_Payload, rhs: Appelis_Multiprofile_V1_LogoutResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.error, .error): return {
        guard case .error(let l) = lhs, case .error(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}
}

public struct Appelis_Multiprofile_V1_LogoutRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var token: Appelis_Identity_Common_V1_Token {
    get {return _token ?? Appelis_Identity_Common_V1_Token()}
    set {_token = newValue}
  }
  /// Returns true if `token` has been explicitly set.
  public var hasToken: Bool {return self._token != nil}
  /// Clears the value of `token`. Subsequent reads from it will return its default value.
  public mutating func clearToken() {self._token = nil}

  public var selectedProfileID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
}

public struct Appelis_Multiprofile_V1_LogInResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Multiprofile_V1_LogInResponse.OneOf_Payload? = nil

  public var data: Appelis_Multiprofile_V1_Profile {
    get {
      if case .data(let v)? = payload {return v}
      return Appelis_Multiprofile_V1_Profile()
    }
    set {payload = .data(newValue)}
  }

  public var error: Appelis_Multiprofile_V1_LogInResponse.Error {
    get {
      if case .error(let v)? = payload {return v}
      return .unknown
    }
    set {payload = .error(newValue)}
  }

  public var tokenErr: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .tokenErr(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .tokenErr(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case data(Appelis_Multiprofile_V1_Profile)
    case error(Appelis_Multiprofile_V1_LogInResponse.Error)
    case tokenErr(Appelis_Identity_Common_V1_TokenError)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Multiprofile_V1_LogInResponse.OneOf_Payload, rhs: Appelis_Multiprofile_V1_LogInResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.data, .data): return {
        guard case .data(let l) = lhs, case .data(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.error, .error): return {
        guard case .error(let l) = lhs, case .error(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.tokenErr, .tokenErr): return {
        guard case .tokenErr(let l) = lhs, case .tokenErr(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum Error: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unknown // = 0

    /// When profile is not bind to device id.
    case unauthorized // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 2: self = .unauthorized
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .unauthorized: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Appelis_Multiprofile_V1_LogInResponse.Error: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Appelis_Multiprofile_V1_LogInResponse.Error] = [
    .unknown,
    .unauthorized,
  ]
}

#endif  // swift(>=4.2)

public struct Appelis_Multiprofile_V1_LogInRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var token: Appelis_Identity_Common_V1_Token {
    get {return _token ?? Appelis_Identity_Common_V1_Token()}
    set {_token = newValue}
  }
  /// Returns true if `token` has been explicitly set.
  public var hasToken: Bool {return self._token != nil}
  /// Clears the value of `token`. Subsequent reads from it will return its default value.
  public mutating func clearToken() {self._token = nil}

  public var selectedProfileID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
}

public struct Appelis_Multiprofile_V1_Profiles {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Appelis_Multiprofile_V1_Profile] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_V1_Profile {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var mobileUserID: Int64 = 0

  public var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createdAt = newValue}
  }
  /// Returns true if `createdAt` has been explicitly set.
  public var hasCreatedAt: Bool {return self._createdAt != nil}
  /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreatedAt() {self._createdAt = nil}

  public var selectedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _selectedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_selectedAt = newValue}
  }
  /// Returns true if `selectedAt` has been explicitly set.
  public var hasSelectedAt: Bool {return self._selectedAt != nil}
  /// Clears the value of `selectedAt`. Subsequent reads from it will return its default value.
  public mutating func clearSelectedAt() {self._selectedAt = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _selectedAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Multiprofile_V1_CreateProfilesResponse: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_CreateProfilesRequest: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_DeleteUserProfilesRequest: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_CreateProfileRequest: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogoutResponse: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogoutResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogoutRequest: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogInResponse: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogInResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogInResponse.Error: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_LogInRequest: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_Profiles: @unchecked Sendable {}
extension Appelis_Multiprofile_V1_Profile: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.multiprofile.v1"

extension Appelis_Multiprofile_V1_CreateProfilesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateProfilesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_CreateProfilesResponse, rhs: Appelis_Multiprofile_V1_CreateProfilesResponse) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_CreateProfilesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateProfilesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_CreateProfilesRequest, rhs: Appelis_Multiprofile_V1_CreateProfilesRequest) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_DeleteUserProfilesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteUserProfilesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mobileUserIds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt64Field(value: &self.mobileUserIds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mobileUserIds.isEmpty {
      try visitor.visitPackedInt64Field(value: self.mobileUserIds, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_DeleteUserProfilesRequest, rhs: Appelis_Multiprofile_V1_DeleteUserProfilesRequest) -> Bool {
    if lhs.mobileUserIds != rhs.mobileUserIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_CreateProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "deviceId"),
    2: .same(proto: "mobileUserId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.deviceID) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.mobileUserID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.deviceID != 0 {
      try visitor.visitSingularInt64Field(value: self.deviceID, fieldNumber: 1)
    }
    if self.mobileUserID != 0 {
      try visitor.visitSingularInt64Field(value: self.mobileUserID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_CreateProfileRequest, rhs: Appelis_Multiprofile_V1_CreateProfileRequest) -> Bool {
    if lhs.deviceID != rhs.deviceID {return false}
    if lhs.mobileUserID != rhs.mobileUserID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_LogoutResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogoutResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Appelis_Identity_Common_V1_TokenError?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .error(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if case .error(let v)? = self.payload {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_LogoutResponse, rhs: Appelis_Multiprofile_V1_LogoutResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_LogoutRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogoutRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "selectedProfileId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.selectedProfileID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._token {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.selectedProfileID != 0 {
      try visitor.visitSingularInt64Field(value: self.selectedProfileID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_LogoutRequest, rhs: Appelis_Multiprofile_V1_LogoutRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.selectedProfileID != rhs.selectedProfileID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_LogInResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogInResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
    2: .same(proto: "error"),
    3: .same(proto: "tokenErr"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Appelis_Multiprofile_V1_Profile?
        var hadOneofValue = false
        if let current = self.payload {
          hadOneofValue = true
          if case .data(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.payload = .data(v)
        }
      }()
      case 2: try {
        var v: Appelis_Multiprofile_V1_LogInResponse.Error?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .error(v)
        }
      }()
      case 3: try {
        var v: Appelis_Identity_Common_V1_TokenError?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .tokenErr(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.payload {
    case .data?: try {
      guard case .data(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .error?: try {
      guard case .error(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    }()
    case .tokenErr?: try {
      guard case .tokenErr(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_LogInResponse, rhs: Appelis_Multiprofile_V1_LogInResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_LogInResponse.Error: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    2: .same(proto: "UNAUTHORIZED"),
  ]
}

extension Appelis_Multiprofile_V1_LogInRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogInRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "selectedProfileId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.selectedProfileID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._token {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.selectedProfileID != 0 {
      try visitor.visitSingularInt64Field(value: self.selectedProfileID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_LogInRequest, rhs: Appelis_Multiprofile_V1_LogInRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.selectedProfileID != rhs.selectedProfileID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_Profiles: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Profiles"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_Profiles, rhs: Appelis_Multiprofile_V1_Profiles) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_V1_Profile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Profile"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "mobileUserId"),
    10: .same(proto: "createdAt"),
    11: .same(proto: "selectedAt"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.mobileUserID) }()
      case 10: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
      case 11: try { try decoder.decodeSingularMessageField(value: &self._selectedAt) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if self.mobileUserID != 0 {
      try visitor.visitSingularInt64Field(value: self.mobileUserID, fieldNumber: 2)
    }
    try { if let v = self._createdAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    } }()
    try { if let v = self._selectedAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_V1_Profile, rhs: Appelis_Multiprofile_V1_Profile) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.mobileUserID != rhs.mobileUserID {return false}
    if lhs._createdAt != rhs._createdAt {return false}
    if lhs._selectedAt != rhs._selectedAt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}