// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: metro_assortment/assortment.cip.catalog.v1.proto
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

public struct Metro_Assortment_V1_GetCompanyCipPricesRequest {
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

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
}

public struct Metro_Assortment_V1_GetCompanyCipPricesCountResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Metro_Assortment_V1_GetCompanyCipPricesCountResponse.OneOf_Payload? = nil

  public var error: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .error(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .error(newValue)}
  }

  public var count: UInt64 {
    get {
      if case .count(let v)? = payload {return v}
      return 0
    }
    set {payload = .count(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case error(Appelis_Identity_Common_V1_TokenError)
    case count(UInt64)

  #if !swift(>=4.1)
    public static func ==(lhs: Metro_Assortment_V1_GetCompanyCipPricesCountResponse.OneOf_Payload, rhs: Metro_Assortment_V1_GetCompanyCipPricesCountResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.error, .error): return {
        guard case .error(let l) = lhs, case .error(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.count, .count): return {
        guard case .count(let l) = lhs, case .count(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Metro_Assortment_V1_GetCompanyCipPricesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Metro_Assortment_V1_GetCompanyCipPricesResponse.OneOf_Payload? = nil

  public var error: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .error(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .error(newValue)}
  }

  public var data: Metro_Assortment_V1_CatalogCipPriceArray {
    get {
      if case .data(let v)? = payload {return v}
      return Metro_Assortment_V1_CatalogCipPriceArray()
    }
    set {payload = .data(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case error(Appelis_Identity_Common_V1_TokenError)
    case data(Metro_Assortment_V1_CatalogCipPriceArray)

  #if !swift(>=4.1)
    public static func ==(lhs: Metro_Assortment_V1_GetCompanyCipPricesResponse.OneOf_Payload, rhs: Metro_Assortment_V1_GetCompanyCipPricesResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.error, .error): return {
        guard case .error(let l) = lhs, case .error(let r) = rhs else { preconditionFailure() }
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

public struct Metro_Assortment_V1_CatalogCipPriceArray {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var data: [Metro_Assortment_V1_CatalogCipPrice] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Metro_Assortment_V1_CatalogCipPrice {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var price: Metro_Assortment_V1_CipPrice {
    get {return _price ?? Metro_Assortment_V1_CipPrice()}
    set {_price = newValue}
  }
  /// Returns true if `price` has been explicitly set.
  public var hasPrice: Bool {return self._price != nil}
  /// Clears the value of `price`. Subsequent reads from it will return its default value.
  public mutating func clearPrice() {self._price = nil}

  public var article: Metro_Assortment_V1_Article {
    get {return _article ?? Metro_Assortment_V1_Article()}
    set {_article = newValue}
  }
  /// Returns true if `article` has been explicitly set.
  public var hasArticle: Bool {return self._article != nil}
  /// Clears the value of `article`. Subsequent reads from it will return its default value.
  public mutating func clearArticle() {self._article = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _price: Metro_Assortment_V1_CipPrice? = nil
  fileprivate var _article: Metro_Assortment_V1_Article? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Metro_Assortment_V1_GetCompanyCipPricesRequest: @unchecked Sendable {}
extension Metro_Assortment_V1_GetCompanyCipPricesCountResponse: @unchecked Sendable {}
extension Metro_Assortment_V1_GetCompanyCipPricesCountResponse.OneOf_Payload: @unchecked Sendable {}
extension Metro_Assortment_V1_GetCompanyCipPricesResponse: @unchecked Sendable {}
extension Metro_Assortment_V1_GetCompanyCipPricesResponse.OneOf_Payload: @unchecked Sendable {}
extension Metro_Assortment_V1_CatalogCipPriceArray: @unchecked Sendable {}
extension Metro_Assortment_V1_CatalogCipPrice: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "metro.assortment.v1"

extension Metro_Assortment_V1_GetCompanyCipPricesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetCompanyCipPricesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
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
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Metro_Assortment_V1_GetCompanyCipPricesRequest, rhs: Metro_Assortment_V1_GetCompanyCipPricesRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Metro_Assortment_V1_GetCompanyCipPricesCountResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetCompanyCipPricesCountResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
    2: .same(proto: "count"),
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
      case 2: try {
        var v: UInt64?
        try decoder.decodeSingularUInt64Field(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .count(v)
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
    case .error?: try {
      guard case .error(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    }()
    case .count?: try {
      guard case .count(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Metro_Assortment_V1_GetCompanyCipPricesCountResponse, rhs: Metro_Assortment_V1_GetCompanyCipPricesCountResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Metro_Assortment_V1_GetCompanyCipPricesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetCompanyCipPricesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
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
          self.payload = .error(v)
        }
      }()
      case 2: try {
        var v: Metro_Assortment_V1_CatalogCipPriceArray?
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
    case .error?: try {
      guard case .error(let v)? = self.payload else { preconditionFailure() }
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

  public static func ==(lhs: Metro_Assortment_V1_GetCompanyCipPricesResponse, rhs: Metro_Assortment_V1_GetCompanyCipPricesResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Metro_Assortment_V1_CatalogCipPriceArray: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CatalogCipPriceArray"
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

  public static func ==(lhs: Metro_Assortment_V1_CatalogCipPriceArray, rhs: Metro_Assortment_V1_CatalogCipPriceArray) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Metro_Assortment_V1_CatalogCipPrice: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CatalogCipPrice"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "price"),
    2: .same(proto: "article"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._price) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._article) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._price {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._article {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Metro_Assortment_V1_CatalogCipPrice, rhs: Metro_Assortment_V1_CatalogCipPrice) -> Bool {
    if lhs._price != rhs._price {return false}
    if lhs._article != rhs._article {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
