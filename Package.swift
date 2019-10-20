// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "pi.reidchatham.com",
    products: [
        .library(name: "pi.reidchatham.com", targets: ["App"]),
    ],
    dependencies: [
        // SwiftyGPIO
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.1.0"),

        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.1.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.2"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
//        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["SwiftyGPIO", "Vapor", "Leaf" /*, "FluentSQLite"*/]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
