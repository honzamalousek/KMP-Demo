// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: assortment_services/attributes.data.v1.proto
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

public enum Appelis_Assortment_Data_V1_AttributeType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unknownAttributeType // = 0
  case normal // = 1
  case inline // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknownAttributeType
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownAttributeType
    case 1: self = .normal
    case 2: self = .inline
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknownAttributeType: return 0
    case .normal: return 1
    case .inline: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Appelis_Assortment_Data_V1_AttributeType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Appelis_Assortment_Data_V1_AttributeType] = [
    .unknownAttributeType,
    .normal,
    .inline,
  ]
}

#endif  // swift(>=4.2)

public struct Appelis_Assortment_Data_V1_Attribute {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var attributeID: String = String()

  public var name: String = String()

  public var order: UInt32 = 0

  public var type: Appelis_Assortment_Data_V1_AttributeType = .unknownAttributeType

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Assortment_Data_V1_AttributeValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idAttributeValue: String = String()

  /// Back reference to attribute
  public var idAttribute: String = String()

  public var value: String = String()

  public var color: Appelis_HexColor {
    get {return _color ?? Appelis_HexColor()}
    set {_color = newValue}
  }
  /// Returns true if `color` has been explicitly set.
  public var hasColor: Bool {return self._color != nil}
  /// Clears the value of `color`. Subsequent reads from it will return its default value.
  public mutating func clearColor() {self._color = nil}

  /// Url for showing icon next to attribute text value. Optional (null is valid value).
  public var url: SwiftProtobuf.Google_Protobuf_StringValue {
    get {return _url ?? SwiftProtobuf.Google_Protobuf_StringValue()}
    set {_url = newValue}
  }
  /// Returns true if `url` has been explicitly set.
  public var hasURL: Bool {return self._url != nil}
  /// Clears the value of `url`. Subsequent reads from it will return its default value.
  public mutating func clearURL() {self._url = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _color: Appelis_HexColor? = nil
  fileprivate var _url: SwiftProtobuf.Google_Protobuf_StringValue? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Assortment_Data_V1_AttributeType: @unchecked Sendable {}
extension Appelis_Assortment_Data_V1_Attribute: @unchecked Sendable {}
extension Appelis_Assortment_Data_V1_AttributeValue: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.assortment.data.v1"

extension Appelis_Assortment_Data_V1_AttributeType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_ATTRIBUTE_TYPE"),
    1: .same(proto: "NORMAL"),
    2: .same(proto: "INLINE"),
  ]
}

extension Appelis_Assortment_Data_V1_Attribute: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Attribute"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "attributeId"),
    2: .same(proto: "name"),
    3: .same(proto: "order"),
    4: .same(proto: "type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.attributeID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.order) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.attributeID.isEmpty {
      try visitor.visitSingularStringField(value: self.attributeID, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.order != 0 {
      try visitor.visitSingularUInt32Field(value: self.order, fieldNumber: 3)
    }
    if self.type != .unknownAttributeType {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Assortment_Data_V1_Attribute, rhs: Appelis_Assortment_Data_V1_Attribute) -> Bool {
    if lhs.attributeID != rhs.attributeID {return false}
    if lhs.name != rhs.name {return false}
    if lhs.order != rhs.order {return false}
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Assortment_Data_V1_AttributeValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AttributeValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idAttributeValue"),
    2: .same(proto: "idAttribute"),
    3: .same(proto: "value"),
    4: .same(proto: "color"),
    5: .same(proto: "url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.idAttributeValue) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.idAttribute) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.value) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._color) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._url) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.idAttributeValue.isEmpty {
      try visitor.visitSingularStringField(value: self.idAttributeValue, fieldNumber: 1)
    }
    if !self.idAttribute.isEmpty {
      try visitor.visitSingularStringField(value: self.idAttribute, fieldNumber: 2)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 3)
    }
    try { if let v = self._color {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._url {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Assortment_Data_V1_AttributeValue, rhs: Appelis_Assortment_Data_V1_AttributeValue) -> Bool {
    if lhs.idAttributeValue != rhs.idAttributeValue {return false}
    if lhs.idAttribute != rhs.idAttribute {return false}
    if lhs.value != rhs.value {return false}
    if lhs._color != rhs._color {return false}
    if lhs._url != rhs._url {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
