// swift-tools-version:6.0

import CompilerPluginSupport
import PackageDescription

let package = Package(
  name: "macroprobe",
  dependencies: [
    .package(url: "https://github.com/apple/swift-syntax", from: "600.0.0"),
  ],
  targets: [
    .executableTarget(
      name: "macroprobe",
      dependencies: ["MacroSupport"]),
    .target(
      name: "MacroSupport",
      dependencies: ["Macros"]),
    .macro(
      name: "Macros",
      dependencies: [
        .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
        .product(name: "SwiftSyntax", package: "swift-syntax"),
        .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
      ]),
  ]
)
