// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: translation_service/translationService.public.v1.proto
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

public struct Appelis_Translations_V1_GetAppTranslationsRequest {
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

  public var modifiedSince: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _modifiedSince ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_modifiedSince = newValue}
  }
  /// Returns true if `modifiedSince` has been explicitly set.
  public var hasModifiedSince: Bool {return self._modifiedSince != nil}
  /// Clears the value of `modifiedSince`. Subsequent reads from it will return its default value.
  public mutating func clearModifiedSince() {self._modifiedSince = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Appelis_Identity_Common_V1_Token? = nil
  fileprivate var _modifiedSince: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Appelis_Translations_V1_GetAppTranslationsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var payload: Appelis_Translations_V1_GetAppTranslationsResponse.OneOf_Payload? = nil

  public var tokenErr: Appelis_Identity_Common_V1_TokenError {
    get {
      if case .tokenErr(let v)? = payload {return v}
      return .unknownTokenError
    }
    set {payload = .tokenErr(newValue)}
  }

  public var permErr: Appelis_Identity_Common_V1_PermissionError {
    get {
      if case .permErr(let v)? = payload {return v}
      return .unknownPermissionError
    }
    set {payload = .permErr(newValue)}
  }

  public var data: Appelis_Translations_V1_GetAppTranslationsResponse.Translations {
    get {
      if case .data(let v)? = payload {return v}
      return Appelis_Translations_V1_GetAppTranslationsResponse.Translations()
    }
    set {payload = .data(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Payload: Equatable {
    case tokenErr(Appelis_Identity_Common_V1_TokenError)
    case permErr(Appelis_Identity_Common_V1_PermissionError)
    case data(Appelis_Translations_V1_GetAppTranslationsResponse.Translations)

  #if !swift(>=4.1)
    public static func ==(lhs: Appelis_Translations_V1_GetAppTranslationsResponse.OneOf_Payload, rhs: Appelis_Translations_V1_GetAppTranslationsResponse.OneOf_Payload) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.tokenErr, .tokenErr): return {
        guard case .tokenErr(let l) = lhs, case .tokenErr(let r) = rhs else { preconditionFailure() }
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

  public struct Translation {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var translationID: Int64 = 0

    public var key: String = String()

    public var value: String = String()

    public var lang: Appelis_Language = .unknown

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public struct Translations {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var translations: [Appelis_Translations_V1_GetAppTranslationsResponse.Translation] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Translations_V1_GetAppTranslationsRequest: @unchecked Sendable {}
extension Appelis_Translations_V1_GetAppTranslationsResponse: @unchecked Sendable {}
extension Appelis_Translations_V1_GetAppTranslationsResponse.OneOf_Payload: @unchecked Sendable {}
extension Appelis_Translations_V1_GetAppTranslationsResponse.Translation: @unchecked Sendable {}
extension Appelis_Translations_V1_GetAppTranslationsResponse.Translations: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.translations.v1"

extension Appelis_Translations_V1_GetAppTranslationsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAppTranslationsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .standard(proto: "modified_since"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._modifiedSince) }()
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
    try { if let v = self._modifiedSince {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Translations_V1_GetAppTranslationsRequest, rhs: Appelis_Translations_V1_GetAppTranslationsRequest) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs._modifiedSince != rhs._modifiedSince {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Translations_V1_GetAppTranslationsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAppTranslationsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tokenErr"),
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
          self.payload = .tokenErr(v)
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
        var v: Appelis_Translations_V1_GetAppTranslationsResponse.Translations?
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

  public static func ==(lhs: Appelis_Translations_V1_GetAppTranslationsResponse, rhs: Appelis_Translations_V1_GetAppTranslationsResponse) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Translations_V1_GetAppTranslationsResponse.Translation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Appelis_Translations_V1_GetAppTranslationsResponse.protoMessageName + ".Translation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "translation_id"),
    2: .same(proto: "key"),
    3: .same(proto: "value"),
    4: .same(proto: "lang"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.translationID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.key) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.value) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.lang) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.translationID != 0 {
      try visitor.visitSingularInt64Field(value: self.translationID, fieldNumber: 1)
    }
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 2)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 3)
    }
    if self.lang != .unknown {
      try visitor.visitSingularEnumField(value: self.lang, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Translations_V1_GetAppTranslationsResponse.Translation, rhs: Appelis_Translations_V1_GetAppTranslationsResponse.Translation) -> Bool {
    if lhs.translationID != rhs.translationID {return false}
    if lhs.key != rhs.key {return false}
    if lhs.value != rhs.value {return false}
    if lhs.lang != rhs.lang {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Translations_V1_GetAppTranslationsResponse.Translations: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Appelis_Translations_V1_GetAppTranslationsResponse.protoMessageName + ".Translations"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "translations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.translations) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.translations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.translations, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Translations_V1_GetAppTranslationsResponse.Translations, rhs: Appelis_Translations_V1_GetAppTranslationsResponse.Translations) -> Bool {
    if lhs.translations != rhs.translations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}