// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: retail_cart/paymentRatesAdmin.v1.proto
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

public enum Appelis_Retail_Cart_V1_PaymentType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unknownPaymentType // = 0
  case cashOnDelivery // = 1
  case payGate // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknownPaymentType
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownPaymentType
    case 1: self = .cashOnDelivery
    case 2: self = .payGate
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknownPaymentType: return 0
    case .cashOnDelivery: return 1
    case .payGate: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Appelis_Retail_Cart_V1_PaymentType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Appelis_Retail_Cart_V1_PaymentType] = [
    .unknownPaymentType,
    .cashOnDelivery,
    .payGate,
  ]
}

#endif  // swift(>=4.2)

public struct Appelis_Retail_Cart_V1_GetPaymentRatesRequest {
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

public struct Appelis_Retail_Cart_V1_PaymentRate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var name: String = String()

  public var description_p: String = String()

  public var type: Appelis_Retail_Cart_V1_PaymentType = .unknownPaymentType

  public var price: Appelis_PriceValue {
    get {return _price ?? Appelis_PriceValue()}
    set {_price = newValue}
  }
  /// Returns true if `price` has been explicitly set.
  public var hasPrice: Bool {return self._price != nil}
  /// Clears the value of `price`. Subsequent reads from it will return its default value.
  public mutating func clearPrice() {self._price = nil}

  public var gatewayID: SwiftProtobuf.Google_Protobuf_StringValue {
    get {return _gatewayID ?? SwiftProtobuf.Google_Protobuf_StringValue()}
    set {_gatewayID = newValue}
  }
  /// Returns true if `gatewayID` has been explicitly set.
  public var hasGatewayID: Bool {return self._gatewayID != nil}
  /// Clears the value of `gatewayID`. Subsequent reads from it will return its default value.
  public mutating func clearGatewayID() {self._gatewayID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _price: Appelis_PriceValue? = nil
  fileprivate var _gatewayID: SwiftProtobuf.Google_Protobuf_StringValue? = nil
}

public struct Appelis_Retail_Cart_V1_PaymentArray {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var array: [Appelis_Retail_Cart_V1_PaymentRate] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Retail_Cart_V1_GetPaymentRatesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Retail_Cart_V1_GetPaymentRatesResponse.OneOf_Payload? = nil

  public var err: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .err(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .err(newValue)}
  }

  public var permErr: Appelis_Identity_Common_V1_PermissionError {
    get {
      if case .permErr(let v)? = payload {return v}
      return .unknownPermissionError
    }
    set {payload = .permErr(newValue)}
  }

  public var data: Appelis_Retail_Cart_V1_PaymentArray {
    get {
      if case .data(let v)? = payload {return v}
      return Appelis_Retail_Cart_V1_PaymentArray()
    }
    set {payload = .data(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case err(Appelis_Identity_Common_V1_TokenError)
    case permErr(Appelis_Identity_Common_V1_PermissionError)
    case data(Appelis_Retail_Cart_V1_PaymentArray)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Retail_Cart_V1_GetPaymentRatesResponse.OneOf_Payload, rhs: Appelis_Retail_Cart_V1_GetPaymentRatesResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.err, .err): return {
        guard case .err(let l) = lhs, case .err(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.permErr, .permErr): return {
        guard case .permErr(let l) = lhs, case .permErr(let r) = rhs else { preconditionFailure() }
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

public struct Appelis_Retail_Cart_V1_SetPaymentRateRequest {
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

  public var rate: Appelis_Retail_Cart_V1_PaymentRate {
    get {return _rate ?? Appelis_Retail_Cart_V1_PaymentRate()}
    set {_rate = newValue}
  }
  /// Returns true if `rate` has been explicitly set.
  public var hasRate: Bool {return self._rate != nil}
  /// Clears the value of `rate`. Subsequent reads from it will return its default value.
  public mutating func clearRate() {self._rate = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
  fileprivate var _rate: Appelis_Retail_Cart_V1_PaymentRate? = nil
}

public struct Appelis_Retail_Cart_V1_SetPaymentRateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Retail_Cart_V1_SetPaymentRateResponse.OneOf_Payload? = nil

  public var err: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .err(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .err(newValue)}
  }

  public var permErr: Appelis_Identity_Common_V1_PermissionError {
    get {
      if case .permErr(let v)? = payload {return v}
      return .unknownPermissionError
    }
    set {payload = .permErr(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case err(Appelis_Identity_Common_V1_TokenError)
    case permErr(Appelis_Identity_Common_V1_PermissionError)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Retail_Cart_V1_SetPaymentRateResponse.OneOf_Payload, rhs: Appelis_Retail_Cart_V1_SetPaymentRateResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.err, .err): return {
        guard case .err(let l) = lhs, case .err(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.permErr, .permErr): return {
        guard case .permErr(let l) = lhs, case .permErr(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Appelis_Retail_Cart_V1_DeletePaymentRateRequest {
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

  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
}

public struct Appelis_Retail_Cart_V1_DeletePaymentRateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Retail_Cart_V1_DeletePaymentRateResponse.OneOf_Payload? = nil

  public var err: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .err(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .err(newValue)}
  }

  public var permErr: Appelis_Identity_Common_V1_PermissionError {
    get {
      if case .permErr(let v)? = payload {return v}
      return .unknownPermissionError
    }
    set {payload = .permErr(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case err(Appelis_Identity_Common_V1_TokenError)
    case permErr(Appelis_Identity_Common_V1_PermissionError)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Retail_Cart_V1_DeletePaymentRateResponse.OneOf_Payload, rhs: Appelis_Retail_Cart_V1_DeletePaymentRateResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.err, .err): return {
        guard case .err(let l) = lhs, case .err(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.permErr, .permErr): return {
        guard case .permErr(let l) = lhs, case .permErr(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Retail_Cart_V1_PaymentType: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_GetPaymentRatesRequest: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_PaymentRate: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_PaymentArray: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_GetPaymentRatesResponse: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_GetPaymentRatesResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_SetPaymentRateRequest: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_SetPaymentRateResponse: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_SetPaymentRateResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_DeletePaymentRateRequest: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_DeletePaymentRateResponse: @unchecked Sendable {}
extension Appelis_Retail_Cart_V1_DeletePaymentRateResponse.OneOf_Payload: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.retail.cart.v1"

extension Appelis_Retail_Cart_V1_PaymentType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_PAYMENT_TYPE"),
    1: .same(proto: "CASH_ON_DELIVERY"),
    2: .same(proto: "PAY_GATE"),
  ]
}

extension Appelis_Retail_Cart_V1_GetPaymentRatesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetPaymentRatesRequest"
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

  public static func ==(lhs: Appelis_Retail_Cart_V1_GetPaymentRatesRequest, rhs: Appelis_Retail_Cart_V1_GetPaymentRatesRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_PaymentRate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PaymentRate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "description"),
    4: .same(proto: "type"),
    5: .same(proto: "price"),
    6: .same(proto: "gatewayId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._price) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._gatewayID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if self.type != .unknownPaymentType {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 4)
    }
    try { if let v = self._price {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._gatewayID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_PaymentRate, rhs: Appelis_Retail_Cart_V1_PaymentRate) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.type != rhs.type {return false}
    if lhs._price != rhs._price {return false}
    if lhs._gatewayID != rhs._gatewayID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_PaymentArray: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PaymentArray"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "array"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.array) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.array.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.array, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_PaymentArray, rhs: Appelis_Retail_Cart_V1_PaymentArray) -> Bool {
    if lhs.array != rhs.array {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_GetPaymentRatesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetPaymentRatesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "err"),
    2: .same(proto: "permErr"),
    3: .same(proto: "data"),
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
          self.payload = .err(v)
        }
      }()
      case 2: try {
        var v: Appelis_Identity_Common_V1_PermissionError?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .permErr(v)
        }
      }()
      case 3: try {
        var v: Appelis_Retail_Cart_V1_PaymentArray?
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
    case .err?: try {
      guard case .err(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    }()
    case .permErr?: try {
      guard case .permErr(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    }()
    case .data?: try {
      guard case .data(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_GetPaymentRatesResponse, rhs: Appelis_Retail_Cart_V1_GetPaymentRatesResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_SetPaymentRateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetPaymentRateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "rate"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._rate) }()
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
    try { if let v = self._rate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_SetPaymentRateRequest, rhs: Appelis_Retail_Cart_V1_SetPaymentRateRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs._rate != rhs._rate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_SetPaymentRateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SetPaymentRateResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "err"),
    2: .same(proto: "permErr"),
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
          self.payload = .err(v)
        }
      }()
      case 2: try {
        var v: Appelis_Identity_Common_V1_PermissionError?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .permErr(v)
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
    case .err?: try {
      guard case .err(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    }()
    case .permErr?: try {
      guard case .permErr(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_SetPaymentRateResponse, rhs: Appelis_Retail_Cart_V1_SetPaymentRateResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_DeletePaymentRateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeletePaymentRateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.id) }()
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
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_DeletePaymentRateRequest, rhs: Appelis_Retail_Cart_V1_DeletePaymentRateRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Retail_Cart_V1_DeletePaymentRateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeletePaymentRateResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "err"),
    2: .same(proto: "permErr"),
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
          self.payload = .err(v)
        }
      }()
      case 2: try {
        var v: Appelis_Identity_Common_V1_PermissionError?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.payload != nil {try decoder.handleConflictingOneOf()}
          self.payload = .permErr(v)
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
    case .err?: try {
      guard case .err(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    }()
    case .permErr?: try {
      guard case .permErr(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Retail_Cart_V1_DeletePaymentRateResponse, rhs: Appelis_Retail_Cart_V1_DeletePaymentRateResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
