// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private extension String {
    static let shared = "Shared"
    static let grpcIOS = "GrpcIOS"
    static let swiftUICore = "SwiftUICore"
}

private extension Target.Dependency {
    static let grpc = product(name: "GRPC", package: "grpc-swift")
    static let shared = Target.Dependency(stringLiteral: .shared)
}


let package = Package(
    name: "Shared",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Shared",
            targets: [.shared, .grpcIOS, .swiftUICore]),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", exact: Version(1, 21, 0)),
    ],
    targets: [
        .binaryTarget(
            name: .shared,
            path: "Shared.xcframework"),
        .target(
            name: .grpcIOS,
            dependencies: [.grpc],
            path: "Sources/GrpcIOS"
        ),
        .target(
            name: .swiftUICore,
            dependencies: [.shared],
            path: "Sources/\(String.swiftUICore)"
        ),
    ])
