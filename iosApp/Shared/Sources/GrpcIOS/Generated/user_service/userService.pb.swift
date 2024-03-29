// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: user_service/userService.proto
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

public struct Appelis_UserService_Users_V1_GetUsersByMobileNumberRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var projectID: String = String()

  public var number: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_GetUsersByEmailRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var email: String = String()

  public var projectID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_DeleteUsersPrivateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var projectID: String = String()

  public var ids: [Int64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_SetUsersPrivateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var projectID: String = String()

  public var users: [Appelis_UserService_Users_V1_MobileUser] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_GetUserResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var user: Appelis_UserService_Users_V1_MobileUser {
    get {return _user ?? Appelis_UserService_Users_V1_MobileUser()}
    set {_user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  public var hasUser: Bool {return self._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  public mutating func clearUser() {self._user = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _user: Appelis_UserService_Users_V1_MobileUser? = nil
}

public struct Appelis_UserService_Users_V1_IdsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: [Int64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_IdRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_CompaniesUsersRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idCompany: [Int64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_CompanyUsersRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idCompany: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_MobileUsersArray {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Appelis_UserService_Users_V1_MobileUser] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_UserService_Users_V1_MobileUser {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idMobileUser: Int64 = 0

  public var name: String = String()

  public var surname: String = String()

  public var email: String = String()

  public var externalID: SwiftProtobuf.Google_Protobuf_StringValue {
    get {return _externalID ?? SwiftProtobuf.Google_Protobuf_StringValue()}
    set {_externalID = newValue}
  }
  /// Returns true if `externalID` has been explicitly set.
  public var hasExternalID: Bool {return self._externalID != nil}
  /// Clears the value of `externalID`. Subsequent reads from it will return its default value.
  public mutating func clearExternalID() {self._externalID = nil}

  public var timeCreate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timeCreate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timeCreate = newValue}
  }
  /// Returns true if `timeCreate` has been explicitly set.
  public var hasTimeCreate: Bool {return self._timeCreate != nil}
  /// Clears the value of `timeCreate`. Subsequent reads from it will return its default value.
  public mutating func clearTimeCreate() {self._timeCreate = nil}

  /// cardVersion is optional, only makro users should have this changed. Default value is "0"
  public var cardVersion: SwiftProtobuf.Google_Protobuf_StringValue {
    get {return _cardVersion ?? SwiftProtobuf.Google_Protobuf_StringValue()}
    set {_cardVersion = newValue}
  }
  /// Returns true if `cardVersion` has been explicitly set.
  public var hasCardVersion: Bool {return self._cardVersion != nil}
  /// Clears the value of `cardVersion`. Subsequent reads from it will return its default value.
  public mutating func clearCardVersion() {self._cardVersion = nil}

  public var idCompany: SwiftProtobuf.Google_Protobuf_Int64Value {
    get {return _idCompany ?? SwiftProtobuf.Google_Protobuf_Int64Value()}
    set {_idCompany = newValue}
  }
  /// Returns true if `idCompany` has been explicitly set.
  public var hasIDCompany: Bool {return self._idCompany != nil}
  /// Clears the value of `idCompany`. Subsequent reads from it will return its default value.
  public mutating func clearIDCompany() {self._idCompany = nil}

  public var userTypes: [String] = []

  public var mobileNumber: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _externalID: SwiftProtobuf.Google_Protobuf_StringValue? = nil
  fileprivate var _timeCreate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _cardVersion: SwiftProtobuf.Google_Protobuf_StringValue? = nil
  fileprivate var _idCompany: SwiftProtobuf.Google_Protobuf_Int64Value? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_UserService_Users_V1_GetUsersByMobileNumberRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_GetUsersByEmailRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_DeleteUsersPrivateRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_SetUsersPrivateRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_GetUserResponse: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_IdsRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_IdRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_CompaniesUsersRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_CompanyUsersRequest: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_MobileUsersArray: @unchecked Sendable {}
extension Appelis_UserService_Users_V1_MobileUser: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.userService.users.v1"

extension Appelis_UserService_Users_V1_GetUsersByMobileNumberRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUsersByMobileNumberRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "projectId"),
    2: .same(proto: "number"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.number) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.number.isEmpty {
      try visitor.visitSingularStringField(value: self.number, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_GetUsersByMobileNumberRequest, rhs: Appelis_UserService_Users_V1_GetUsersByMobileNumberRequest) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.number != rhs.number {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_GetUsersByEmailRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUsersByEmailRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "email"),
    2: .same(proto: "projectId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.email) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 1)
    }
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_GetUsersByEmailRequest, rhs: Appelis_UserService_Users_V1_GetUsersByEmailRequest) -> Bool {
    if lhs.email != rhs.email {return false}
    if lhs.projectID != rhs.projectID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_DeleteUsersPrivateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteUsersPrivateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "projectId"),
    2: .same(proto: "ids"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeRepeatedInt64Field(value: &self.ids) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.ids.isEmpty {
      try visitor.visitPackedInt64Field(value: self.ids, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_DeleteUsersPrivateRequest, rhs: Appelis_UserService_Users_V1_DeleteUsersPrivateRequest) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.ids != rhs.ids {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_SetUsersPrivateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetUsersPrivateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "projectId"),
    2: .same(proto: "users"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.users) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.users.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.users, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_SetUsersPrivateRequest, rhs: Appelis_UserService_Users_V1_SetUsersPrivateRequest) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.users != rhs.users {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_GetUserResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUserResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "user"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._user) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._user {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_GetUserResponse, rhs: Appelis_UserService_Users_V1_GetUserResponse) -> Bool {
    if lhs._user != rhs._user {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_IdsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IdsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt64Field(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitPackedInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_IdsRequest, rhs: Appelis_UserService_Users_V1_IdsRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_IdRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IdRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_IdRequest, rhs: Appelis_UserService_Users_V1_IdRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_CompaniesUsersRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CompaniesUsersRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idCompany"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt64Field(value: &self.idCompany) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.idCompany.isEmpty {
      try visitor.visitPackedInt64Field(value: self.idCompany, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_CompaniesUsersRequest, rhs: Appelis_UserService_Users_V1_CompaniesUsersRequest) -> Bool {
    if lhs.idCompany != rhs.idCompany {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_CompanyUsersRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CompanyUsersRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idCompany"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.idCompany) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.idCompany != 0 {
      try visitor.visitSingularInt64Field(value: self.idCompany, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_CompanyUsersRequest, rhs: Appelis_UserService_Users_V1_CompanyUsersRequest) -> Bool {
    if lhs.idCompany != rhs.idCompany {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_MobileUsersArray: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MobileUsersArray"
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

  public static func ==(lhs: Appelis_UserService_Users_V1_MobileUsersArray, rhs: Appelis_UserService_Users_V1_MobileUsersArray) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_UserService_Users_V1_MobileUser: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MobileUser"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idMobileUser"),
    2: .same(proto: "name"),
    3: .same(proto: "surname"),
    4: .same(proto: "email"),
    5: .same(proto: "externalId"),
    6: .same(proto: "timeCreate"),
    7: .same(proto: "cardVersion"),
    8: .same(proto: "idCompany"),
    9: .same(proto: "userTypes"),
    10: .same(proto: "mobileNumber"),
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
      case 4: try { try decoder.decodeSingularStringField(value: &self.email) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._externalID) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._timeCreate) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._cardVersion) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._idCompany) }()
      case 9: try { try decoder.decodeRepeatedStringField(value: &self.userTypes) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.mobileNumber) }()
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
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 4)
    }
    try { if let v = self._externalID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._timeCreate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._cardVersion {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._idCompany {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    if !self.userTypes.isEmpty {
      try visitor.visitRepeatedStringField(value: self.userTypes, fieldNumber: 9)
    }
    if !self.mobileNumber.isEmpty {
      try visitor.visitSingularStringField(value: self.mobileNumber, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_UserService_Users_V1_MobileUser, rhs: Appelis_UserService_Users_V1_MobileUser) -> Bool {
    if lhs.idMobileUser != rhs.idMobileUser {return false}
    if lhs.name != rhs.name {return false}
    if lhs.surname != rhs.surname {return false}
    if lhs.email != rhs.email {return false}
    if lhs._externalID != rhs._externalID {return false}
    if lhs._timeCreate != rhs._timeCreate {return false}
    if lhs._cardVersion != rhs._cardVersion {return false}
    if lhs._idCompany != rhs._idCompany {return false}
    if lhs.userTypes != rhs.userTypes {return false}
    if lhs.mobileNumber != rhs.mobileNumber {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
