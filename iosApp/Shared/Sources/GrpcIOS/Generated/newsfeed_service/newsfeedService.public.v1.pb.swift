// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: newsfeed_service/newsfeedService.public.v1.proto
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

public struct Appelis_Newsfeed_V1_GetNewsFeedRequest {
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

  public var paging: Appelis_PagingParams {
    get {return _paging ?? Appelis_PagingParams()}
    set {_paging = newValue}
  }
  /// Returns true if `paging` has been explicitly set.
  public var hasPaging: Bool {return self._paging != nil}
  /// Clears the value of `paging`. Subsequent reads from it will return its default value.
  public mutating func clearPaging() {self._paging = nil}

  public var idBusiness: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
  fileprivate var _paging: Appelis_PagingParams? = nil
}

public struct Appelis_Newsfeed_V1_GetNewsFeedResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Newsfeed_V1_GetNewsFeedResponse.OneOf_Payload? = nil

  public var tokenErr: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .tokenErr(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .tokenErr(newValue)}
  }

  public var page: Appelis_Newsfeed_V1_GetNewsFeedResponse.Page {
    get {
      if case .page(let v)? = payload {return v}
      return Appelis_Newsfeed_V1_GetNewsFeedResponse.Page()
    }
    set {payload = .page(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case tokenErr(Appelis_Identity_Common_V1_TokenError)
    case page(Appelis_Newsfeed_V1_GetNewsFeedResponse.Page)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedResponse.OneOf_Payload, rhs: Appelis_Newsfeed_V1_GetNewsFeedResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.tokenErr, .tokenErr): return {
        guard case .tokenErr(let l) = lhs, case .tokenErr(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.page, .page): return {
        guard case .page(let l) = lhs, case .page(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public struct Node {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var cursor: String = String()

    public var data: Appelis_Newsfeed_Data_V1_NewsFeedItem {
      get {return _data ?? Appelis_Newsfeed_Data_V1_NewsFeedItem()}
      set {_data = newValue}
    }
    /// Returns true if `data` has been explicitly set.
    public var hasData: Bool {return self._data != nil}
    /// Clears the value of `data`. Subsequent reads from it will return its default value.
    public mutating func clearData() {self._data = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _data: Appelis_Newsfeed_Data_V1_NewsFeedItem? = nil
  }

  public struct Page {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var info: Appelis_PageInfo {
      get {return _info ?? Appelis_PageInfo()}
      set {_info = newValue}
    }
    /// Returns true if `info` has been explicitly set.
    public var hasInfo: Bool {return self._info != nil}
    /// Clears the value of `info`. Subsequent reads from it will return its default value.
    public mutating func clearInfo() {self._info = nil}

    public var node: [Appelis_Newsfeed_V1_GetNewsFeedResponse.Node] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _info: Appelis_PageInfo? = nil
  }

  public init() {}
}

public struct Appelis_Newsfeed_V1_GetNewsFeedItemRequest {
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

  public var id: Appelis_ObjectId {
    get {return _id ?? Appelis_ObjectId()}
    set {_id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  public var hasID: Bool {return self._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  public mutating func clearID() {self._id = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
  fileprivate var _id: Appelis_ObjectId? = nil
}

public struct Appelis_Newsfeed_V1_GetNewsFeedItemResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Newsfeed_V1_GetNewsFeedItemResponse.OneOf_Payload? = nil

  public var tokenErr: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .tokenErr(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .tokenErr(newValue)}
  }

  public var data: Appelis_Newsfeed_Data_V1_NewsFeedItem {
    get {
      if case .data(let v)? = payload {return v}
      return Appelis_Newsfeed_Data_V1_NewsFeedItem()
    }
    set {payload = .data(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case tokenErr(Appelis_Identity_Common_V1_TokenError)
    case data(Appelis_Newsfeed_Data_V1_NewsFeedItem)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedItemResponse.OneOf_Payload, rhs: Appelis_Newsfeed_V1_GetNewsFeedItemResponse.OneOf_Payload) -> Bool {
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

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Newsfeed_V1_GetNewsFeedRequest: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedResponse: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedResponse.Node: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedResponse.Page: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedItemRequest: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedItemResponse: @unchecked Sendable {}
extension Appelis_Newsfeed_V1_GetNewsFeedItemResponse.OneOf_Payload: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.newsfeed.v1"

extension Appelis_Newsfeed_V1_GetNewsFeedRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetNewsFeedRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "paging"),
    3: .same(proto: "idBusiness"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._paging) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.idBusiness) }()
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
    try { if let v = self._paging {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.idBusiness.isEmpty {
      try visitor.visitSingularStringField(value: self.idBusiness, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedRequest, rhs: Appelis_Newsfeed_V1_GetNewsFeedRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs._paging != rhs._paging {return false}
    if lhs.idBusiness != rhs.idBusiness {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Newsfeed_V1_GetNewsFeedResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetNewsFeedResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tokenErr"),
    2: .same(proto: "page"),
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
        var v: Appelis_Newsfeed_V1_GetNewsFeedResponse.Page?
        var hadOneofValue = false
        if let current = self.payload {
          hadOneofValue = true
          if case .page(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.payload = .page(v)
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
    case .page?: try {
      guard case .page(let v)? = self.payload else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedResponse, rhs: Appelis_Newsfeed_V1_GetNewsFeedResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Newsfeed_V1_GetNewsFeedResponse.Node: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Appelis_Newsfeed_V1_GetNewsFeedResponse.protoMessageName + ".Node"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cursor"),
    2: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cursor) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.cursor.isEmpty {
      try visitor.visitSingularStringField(value: self.cursor, fieldNumber: 1)
    }
    try { if let v = self._data {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedResponse.Node, rhs: Appelis_Newsfeed_V1_GetNewsFeedResponse.Node) -> Bool {
    if lhs.cursor != rhs.cursor {return false}
    if lhs._data != rhs._data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Newsfeed_V1_GetNewsFeedResponse.Page: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Appelis_Newsfeed_V1_GetNewsFeedResponse.protoMessageName + ".Page"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "info"),
    2: .same(proto: "node"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._info) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.node) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._info {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.node.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.node, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedResponse.Page, rhs: Appelis_Newsfeed_V1_GetNewsFeedResponse.Page) -> Bool {
    if lhs._info != rhs._info {return false}
    if lhs.node != rhs.node {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Newsfeed_V1_GetNewsFeedItemRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetNewsFeedItemRequest"
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
      case 2: try { try decoder.decodeSingularMessageField(value: &self._id) }()
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
    try { if let v = self._id {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedItemRequest, rhs: Appelis_Newsfeed_V1_GetNewsFeedItemRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs._id != rhs._id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Newsfeed_V1_GetNewsFeedItemResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetNewsFeedItemResponse"
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
        var v: Appelis_Newsfeed_Data_V1_NewsFeedItem?
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

  public static func ==(lhs: Appelis_Newsfeed_V1_GetNewsFeedItemResponse, rhs: Appelis_Newsfeed_V1_GetNewsFeedItemResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
