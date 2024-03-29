// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: clickandcollect_metro_services/metroRegistrationService.analytics.v1.proto
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

public struct Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idProject: String = String()

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

  fileprivate var _timerange: Appelis_TimeRange? = nil
}

public struct Appelis_Clickandcollect_Metro_V1_RecordsByStore {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var idStore: String = String()

  public var all: UInt32 = 0

  public var diff: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var records: [Appelis_Clickandcollect_Metro_V1_RecordsByStore] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdRequest: @unchecked Sendable {}
extension Appelis_Clickandcollect_Metro_V1_RecordsByStore: @unchecked Sendable {}
extension Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis.clickandcollect.metro.v1"

extension Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRegistrationsCountByBusinessIdRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idProject"),
    2: .same(proto: "timerange"),
    3: .same(proto: "sortByDiff"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.idProject) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._timerange) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.sortByDiff) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.idProject.isEmpty {
      try visitor.visitSingularStringField(value: self.idProject, fieldNumber: 1)
    }
    try { if let v = self._timerange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.sortByDiff != false {
      try visitor.visitSingularBoolField(value: self.sortByDiff, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdRequest, rhs: Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdRequest) -> Bool {
    if lhs.idProject != rhs.idProject {return false}
    if lhs._timerange != rhs._timerange {return false}
    if lhs.sortByDiff != rhs.sortByDiff {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Clickandcollect_Metro_V1_RecordsByStore: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RecordsByStore"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "idStore"),
    2: .same(proto: "all"),
    3: .same(proto: "diff"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.idStore) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.all) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.diff) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.idStore.isEmpty {
      try visitor.visitSingularStringField(value: self.idStore, fieldNumber: 1)
    }
    if self.all != 0 {
      try visitor.visitSingularUInt32Field(value: self.all, fieldNumber: 2)
    }
    if self.diff != 0 {
      try visitor.visitSingularUInt32Field(value: self.diff, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Clickandcollect_Metro_V1_RecordsByStore, rhs: Appelis_Clickandcollect_Metro_V1_RecordsByStore) -> Bool {
    if lhs.idStore != rhs.idStore {return false}
    if lhs.all != rhs.all {return false}
    if lhs.diff != rhs.diff {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRegistrationsCountByBusinessIdResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "records"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.records) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.records.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.records, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdResponse, rhs: Appelis_Clickandcollect_Metro_V1_GetRegistrationsCountByBusinessIdResponse) -> Bool {
    if lhs.records != rhs.records {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
