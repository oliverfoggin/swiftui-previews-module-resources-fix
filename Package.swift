// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "BundleResourceFixPackage",
  platforms: [.iOS(.v15)],
  products: [
    .plugin(name: "BundleCurrent", targets: ["BundleCurrent"]),
    .executable(name: "BundleCurrentCLI", targets: ["BundleCurrentCLI"]),
  ],
  dependencies: [],
  targets: [
    // MARK: - Plugin
    .plugin(
      name: "BundleCurrent",
      capability: .buildTool(),
      dependencies: ["BundleCurrentCLI"]
    ),
    .executableTarget(name: "BundleCurrentCLI"),
  ]
)
