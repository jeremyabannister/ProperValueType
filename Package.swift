// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "ProperValueType",
    products: [
        .library(
            name: "ProperValueType",
            targets: ["ProperValueType"]
        ),
        .library(
            name: "ProperValueTypeTestToolkit",
            targets: ["ProperValueTypeTestToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/ExpressionErgonomics",
            from: "0.1.6"
        )
    ],
    targets: [
        .target(
            name: "ProperValueType",
            dependencies: ["ExpressionErgonomics"]
        ),
        .target(
            name: "ProperValueTypeTestToolkit",
            dependencies: [
                "ProperValueType",
                .product(
                    name: "ExpressionErgonomicsTestToolkit",
                    package: "ExpressionErgonomics"
                )
            ]
        ),
        .testTarget(
            name: "ProperValueType-tests",
            dependencies: ["ProperValueTypeTestToolkit"]
        ),
        .testTarget(
            name: "ProperValueTypeTestToolkit-tests",
            dependencies: ["ProperValueTypeTestToolkit"]
        ),
    ]
)
