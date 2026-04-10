// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "StockTracker",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(name: "StockTracker", targets: ["StockTracker"])
    ],
    targets: [
        .executableTarget(
            name: "StockTracker",
            path: "StockTracker"
        )
    ]
)
