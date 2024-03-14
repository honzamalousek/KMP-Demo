// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: appelis/semver.proto
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

/// The semantic version structure.
///    <valid semver> ::= <version core>
///                     | <version core> "-" <pre-release>
///                     | <version core> "+" <build>
///                     | <version core> "-" <pre-release> "+" <build>
public struct Appelis_SemVer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The major version, e.g 10 for 10.2.3.
  public var major: Int32 = 0

  /// The minor version, e.g. 2 for 10.2.3.
  public var minor: Int32 = 0

  /// The patch version, e.g 3 for 10.2.3.
  public var patch: Int32 = 0

  /// Suffix after version core
  public var preRelease: String = String()

  public var build: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Appelis_SemVer: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "appelis"

extension Appelis_SemVer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SemVer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "major"),
    2: .same(proto: "minor"),
    3: .same(proto: "patch"),
    4: .same(proto: "preRelease"),
    5: .same(proto: "build"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.major) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.minor) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.patch) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.preRelease) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.build) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.major != 0 {
      try visitor.visitSingularInt32Field(value: self.major, fieldNumber: 1)
    }
    if self.minor != 0 {
      try visitor.visitSingularInt32Field(value: self.minor, fieldNumber: 2)
    }
    if self.patch != 0 {
      try visitor.visitSingularInt32Field(value: self.patch, fieldNumber: 3)
    }
    if !self.preRelease.isEmpty {
      try visitor.visitSingularStringField(value: self.preRelease, fieldNumber: 4)
    }
    if !self.build.isEmpty {
      try visitor.visitSingularStringField(value: self.build, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Appelis_SemVer, rhs: Appelis_SemVer) -> Bool {
    if lhs.major != rhs.major {return false}
    if lhs.minor != rhs.minor {return false}
    if lhs.patch != rhs.patch {return false}
    if lhs.preRelease != rhs.preRelease {return false}
    if lhs.build != rhs.build {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
