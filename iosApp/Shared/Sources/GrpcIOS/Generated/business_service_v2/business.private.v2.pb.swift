// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: business_service_v2/business.private.v2.proto
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

public struct Appelis_Business_Private_V2_GetBusinessesListRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var projectID: String = String()

  public var fieldMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _fieldMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_fieldMask = newValue}
  }
  /// Returns true if `fieldMask` has been explicitly set.
  public var hasFieldMask: Bool {return self._fieldMask != nil}
  /// Clears the value of `fieldMask`. Subsequent reads from it will return its default value.
  public mutating func clearFieldMask() {self._fieldMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _fieldMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

public struct Appelis_Business_Private_V2_GetBusinessesListResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var businesses: Appelis_Business_V2_BusinessArray {
    get {return _businesses ?? Appelis_Business_V2_BusinessArray()}
    set {_businesses = newValue}
  }
  /// Returns true if `businesses` has been explicitly set.
  public var hasBusinesses: Bool {return self._businesses != nil}
  /// Clears the value of `businesses`. Subsequent reads from it will return its default value.
  public mutating func clearBusinesses() {self._businesses = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _businesses: Appelis_Business_V2_BusinessArray? = nil
}

public struct Appelis_Business_Private_V2_GetBusinessByIDRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var projectID: String = String()

  public var businessID: String = String()

  /// Field mask will be applied to whole response.
  public var fieldMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _fieldMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_fieldMask = newValue}
  }
  /// Returns true if `fieldMask` has been explicitly set.
  public var hasFieldMask: Bool {return self._fieldMask != nil}
  /// Clears the value of `fieldMask`. Subsequent reads from it will return its default value.
  public mutating func clearFieldMask() {self._fieldMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _fieldMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

public struct Appelis_Business_Private_V2_GetBusinessByIdResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var business: Appelis_Business_V2_Business {
    get {return _business ?? Appelis_Business_V2_Business()}
    set {_business = newValue}
  }
  /// Returns true if `business` has been explicitly set.
  public var hasBusiness: Bool {return self._business != nil}
  /// Clears the value of `business`. Subsequent reads from it will return its default value.
  public mutating func clearBusiness() {self._business = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _business: Appelis_Business_V2_Business? = nil
}

public struct Appelis_Business_Private_V2_GetBusinessByExternalIdRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var projectID: String = String()

  public var externalID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Business_Private_V2_GetBusinessByExternalIdResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var business: Appelis_Business_V2_Business {
    get {return _business ?? Appelis_Business_V2_Business()}
    set {_business = newValue}
  }
  /// Returns true if `business` has been explicitly set.
  public var hasBusiness: Bool {return self._business != nil}
  /// Clears the value of `business`. Subsequent reads from it will return its default value.
  public mutating func clearBusiness() {self._business = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _business: Appelis_Business_V2_Business? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Business_Private_V2_GetBusinessesListRequest: @unchecked Sendable {}
extension Appelis_Business_Private_V2_GetBusinessesListResponse: @unchecked Sendable {}
extension Appelis_Business_Private_V2_GetBusinessByIDRequest: @unchecked Sendable {}
extension Appelis_Business_Private_V2_GetBusinessByIdResponse: @unchecked Sendable {}
extension Appelis_Business_Private_V2_GetBusinessByExternalIdRequest: @unchecked Sendable {}
extension Appelis_Business_Private_V2_GetBusinessByExternalIdResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.business.private.v2"

extension Appelis_Business_Private_V2_GetBusinessesListRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBusinessesListRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "projectId"),
    2: .standard(proto: "field_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._fieldMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    try { if let v = self._fieldMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Business_Private_V2_GetBusinessesListRequest, rhs: Appelis_Business_Private_V2_GetBusinessesListRequest) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs._fieldMask != rhs._fieldMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Business_Private_V2_GetBusinessesListResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBusinessesListResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "businesses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._businesses) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._businesses {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Business_Private_V2_GetBusinessesListResponse, rhs: Appelis_Business_Private_V2_GetBusinessesListResponse) -> Bool {
    if lhs._businesses != rhs._businesses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Business_Private_V2_GetBusinessByIDRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBusinessByIDRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "projectId"),
    2: .same(proto: "businessId"),
    3: .standard(proto: "field_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.businessID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._fieldMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.businessID.isEmpty {
      try visitor.visitSingularStringField(value: self.businessID, fieldNumber: 2)
    }
    try { if let v = self._fieldMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Business_Private_V2_GetBusinessByIDRequest, rhs: Appelis_Business_Private_V2_GetBusinessByIDRequest) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.businessID != rhs.businessID {return false}
    if lhs._fieldMask != rhs._fieldMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Business_Private_V2_GetBusinessByIdResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBusinessByIdResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "business"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._business) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._business {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Business_Private_V2_GetBusinessByIdResponse, rhs: Appelis_Business_Private_V2_GetBusinessByIdResponse) -> Bool {
    if lhs._business != rhs._business {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Business_Private_V2_GetBusinessByExternalIdRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBusinessByExternalIdRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "projectId"),
    2: .same(proto: "externalId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.externalID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.externalID.isEmpty {
      try visitor.visitSingularStringField(value: self.externalID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Business_Private_V2_GetBusinessByExternalIdRequest, rhs: Appelis_Business_Private_V2_GetBusinessByExternalIdRequest) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.externalID != rhs.externalID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Business_Private_V2_GetBusinessByExternalIdResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetBusinessByExternalIdResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "business"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._business) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._business {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Business_Private_V2_GetBusinessByExternalIdResponse, rhs: Appelis_Business_Private_V2_GetBusinessByExternalIdResponse) -> Bool {
    if lhs._business != rhs._business {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
