// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: user_watchdogs/userWatchdogs.analytics.v1.proto
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

public struct Appelis_Watchdogs_V1_GetMostWatchedRequest {
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

  public var size: Int64 = 0

  public var timerange: Appelis_TimeRange {
    get {return _timerange ?? Appelis_TimeRange()}
    set {_timerange = newValue}
  }
  /// Returns true if `timerange` has been explicitly set.
  public var hasTimerange: Bool {return self._timerange != nil}
  /// Clears the value of `timerange`. Subsequent reads from it will return its default value.
  public mutating func clearTimerange() {self._timerange = nil}

  public var sortByDiff: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
  fileprivate var _timerange: Appelis_TimeRange? = nil
}

public struct Appelis_Watchdogs_V1_GetMostWatchedResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Watchdogs_V1_GetMostWatchedResponse.OneOf_Payload? = nil

  public var tokenErr: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .tokenErr(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .tokenErr(newValue)}
  }

  public var data: Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList {
    get {
      if case .data(let v)? = payload {return v}
      return Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList()
    }
    set {payload = .data(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case tokenErr(Appelis_Identity_Common_V1_TokenError)
    case data(Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Watchdogs_V1_GetMostWatchedResponse.OneOf_Payload, rhs: Appelis_Watchdogs_V1_GetMostWatchedResponse.OneOf_Payload) -> Bool {
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

  public struct MostWatchedList {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var watchedCount: [Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList.WatchedCount] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public struct WatchedCount {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      public var idItem: String = String()

      public var all: Int64 = 0

      public var diff: Int64 = 0

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}
    }

    public init() {}
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Watchdogs_V1_GetMostWatchedRequest: @unchecked Sendable {}
extension Appelis_Watchdogs_V1_GetMostWatchedResponse: @unchecked Sendable {}
extension Appelis_Watchdogs_V1_GetMostWatchedResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList: @unchecked Sendable {}
extension Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList.WatchedCount: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.watchdogs.v1"

extension Appelis_Watchdogs_V1_GetMostWatchedRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetMostWatchedRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "size"),
    3: .same(proto: "timerange"),
    4: .same(proto: "sortByDiff"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.size) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._timerange) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.sortByDiff) }()
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
    if self.size != 0 {
      try visitor.visitSingularInt64Field(value: self.size, fieldNumber: 2)
    }
    try { if let v = self._timerange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.sortByDiff != false {
      try visitor.visitSingularBoolField(value: self.sortByDiff, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Watchdogs_V1_GetMostWatchedRequest, rhs: Appelis_Watchdogs_V1_GetMostWatchedRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.size != rhs.size {return false}
    if lhs._timerange != rhs._timerange {return false}
    if lhs.sortByDiff != rhs.sortByDiff {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Watchdogs_V1_GetMostWatchedResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetMostWatchedResponse"
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
        var v: Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList?
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

  public static func ==(lhs: Appelis_Watchdogs_V1_GetMostWatchedResponse, rhs: Appelis_Watchdogs_V1_GetMostWatchedResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Appelis_Watchdogs_V1_GetMostWatchedResponse.protoMessageName + ".MostWatchedList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "watchedCount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.watchedCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.watchedCount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.watchedCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList, rhs: Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList) -> Bool {
    if lhs.watchedCount != rhs.watchedCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList.WatchedCount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList.protoMessageName + ".WatchedCount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idItem"),
    2: .same(proto: "all"),
    3: .same(proto: "diff"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.idItem) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.all) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.diff) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.idItem.isEmpty {
      try visitor.visitSingularStringField(value: self.idItem, fieldNumber: 1)
    }
    if self.all != 0 {
      try visitor.visitSingularInt64Field(value: self.all, fieldNumber: 2)
    }
    if self.diff != 0 {
      try visitor.visitSingularInt64Field(value: self.diff, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList.WatchedCount, rhs: Appelis_Watchdogs_V1_GetMostWatchedResponse.MostWatchedList.WatchedCount) -> Bool {
    if lhs.idItem != rhs.idItem {return false}
    if lhs.all != rhs.all {return false}
    if lhs.diff != rhs.diff {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
