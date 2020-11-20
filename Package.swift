// swift-tools-version:5.2

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 20/11/2020.
//  All code (c) 2020 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "FilePicker",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "FilePicker",
            targets: ["FilePicker"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XCTestExtensions", from: "1.1.2")
    ],
    targets: [
        .target(
            name: "FilePicker",
            dependencies: []),
        .testTarget(
            name: "FilePickerTests",
            dependencies: ["FilePicker", "XCTestExtensions"]),
    ]
)
