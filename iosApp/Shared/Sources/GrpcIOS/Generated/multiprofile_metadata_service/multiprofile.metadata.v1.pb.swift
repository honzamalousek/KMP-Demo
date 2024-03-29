// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: multiprofile_metadata_service/multiprofile.metadata.v1.proto
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

public struct Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse.OneOf_Payload? = nil

  public var tokenErr: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .tokenErr(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .tokenErr(newValue)}
  }

  public var data: Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray {
    get {
      if case .data(let v)? = payload {return v}
      return Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray()
    }
    set {payload = .data(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case tokenErr(Appelis_Identity_Common_V1_TokenError)
    case data(Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse.OneOf_Payload, rhs: Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.tokenErr, .tokenErr): return {
        guard case .tokenErr(let l) = lhs, case .tokenErr(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.data, .data): return {
        guard case .data(let l) = lhs, case .data(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Appelis_Multiprofile_Metadata_V1_ProfileMetadata] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_Metadata_V1_ProfileMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var profile: Appelis_Multiprofile_V1_Profile {
    get {return _profile ?? Appelis_Multiprofile_V1_Profile()}
    set {_profile = newValue}
  }
  /// Returns true if `profile` has been explicitly set.
  public var hasProfile: Bool {return self._profile != nil}
  /// Clears the value of `profile`. Subsequent reads from it will return its default value.
  public mutating func clearProfile() {self._profile = nil}

  public var user: Appelis_Multiprofile_Metadata_V1_UserMetadata {
    get {return _user ?? Appelis_Multiprofile_Metadata_V1_UserMetadata()}
    set {_user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  public var hasUser: Bool {return self._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  public mutating func clearUser() {self._user = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _profile: Appelis_Multiprofile_V1_Profile? = nil
  fileprivate var _user: Appelis_Multiprofile_Metadata_V1_UserMetadata? = nil
}

public struct Appelis_Multiprofile_Metadata_V1_UserMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idMobileUser: Int64 = 0

  public var name: String = String()

  public var surname: String = String()

  public var company: Appelis_Multiprofile_Metadata_V1_CompanyMetadata {
    get {return _company ?? Appelis_Multiprofile_Metadata_V1_CompanyMetadata()}
    set {_company = newValue}
  }
  /// Returns true if `company` has been explicitly set.
  public var hasCompany: Bool {return self._company != nil}
  /// Clears the value of `company`. Subsequent reads from it will return its default value.
  public mutating func clearCompany() {self._company = nil}

  public var cards: [Appelis_Multiprofile_Metadata_V1_CardMetadata] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _company: Appelis_Multiprofile_Metadata_V1_CompanyMetadata? = nil
}

public struct Appelis_Multiprofile_Metadata_V1_CompanyMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var companyType: Appelis_UserService_Companies_V1_Company.CompanyType = .typeUnknown

  public var ico: Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata {
    get {return _ico ?? Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata()}
    set {_ico = newValue}
  }
  /// Returns true if `ico` has been explicitly set.
  public var hasIco: Bool {return self._ico != nil}
  /// Clears the value of `ico`. Subsequent reads from it will return its default value.
  public mutating func clearIco() {self._ico = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _ico: Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata? = nil
}

public struct Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Multiprofile_Metadata_V1_CardMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var identification: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_ProfileMetadata: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_UserMetadata: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_CompanyMetadata: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata: @unchecked Sendable {}
extension Appelis_Multiprofile_Metadata_V1_CardMetadata: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.multiprofile.metadata.v1"

extension Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProfileUsersResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tokenErr"),
    2: .same(proto: "data"),
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
          self.payload = .tokenErr(v)
        }
      }()
      case 2: try {
        var v: Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray?
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
    case .tokenErr?: try {
      guard case .tokenErr(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    }()
    case .data?: try {
      guard case .data(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse, rhs: Appelis_Multiprofile_Metadata_V1_ProfileUsersResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProfileMetadataArray"
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

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray, rhs: Appelis_Multiprofile_Metadata_V1_ProfileMetadataArray) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_Metadata_V1_ProfileMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProfileMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "profile"),
    2: .same(proto: "user"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._profile) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._user) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._profile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._user {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_ProfileMetadata, rhs: Appelis_Multiprofile_Metadata_V1_ProfileMetadata) -> Bool {
    if lhs._profile != rhs._profile {return false}
    if lhs._user != rhs._user {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_Metadata_V1_UserMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UserMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idMobileUser"),
    2: .same(proto: "name"),
    3: .same(proto: "surname"),
    4: .same(proto: "company"),
    5: .same(proto: "cards"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.idMobileUser) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.surname) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._company) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.cards) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.idMobileUser != 0 {
      try visitor.visitSingularInt64Field(value: self.idMobileUser, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.surname.isEmpty {
      try visitor.visitSingularStringField(value: self.surname, fieldNumber: 3)
    }
    try { if let v = self._company {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    if !self.cards.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cards, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_UserMetadata, rhs: Appelis_Multiprofile_Metadata_V1_UserMetadata) -> Bool {
    if lhs.idMobileUser != rhs.idMobileUser {return false}
    if lhs.name != rhs.name {return false}
    if lhs.surname != rhs.surname {return false}
    if lhs._company != rhs._company {return false}
    if lhs.cards != rhs.cards {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_Metadata_V1_CompanyMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CompanyMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "companyType"),
    2: .same(proto: "ico"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.companyType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._ico) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.companyType != .typeUnknown {
      try visitor.visitSingularEnumField(value: self.companyType, fieldNumber: 1)
    }
    try { if let v = self._ico {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_CompanyMetadata, rhs: Appelis_Multiprofile_Metadata_V1_CompanyMetadata) -> Bool {
    if lhs.companyType != rhs.companyType {return false}
    if lhs._ico != rhs._ico {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IcoProfileMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata, rhs: Appelis_Multiprofile_Metadata_V1_IcoProfileMetadata) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Multiprofile_Metadata_V1_CardMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CardMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "identification"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.identification) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.identification.isEmpty {
      try visitor.visitSingularStringField(value: self.identification, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Multiprofile_Metadata_V1_CardMetadata, rhs: Appelis_Multiprofile_Metadata_V1_CardMetadata) -> Bool {
    if lhs.identification != rhs.identification {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
