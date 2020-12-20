// swift-tools-version:5.3

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 20/11/2020.
//  All code (c) 2020 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "FilePicker",
    platforms: [
        .macOS(.v10_13), .iOS(.v13)
    ],
    products: [
        .library(
            name: "FilePicker",
            targets: ["FilePicker"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XCTestExtensions.git", from: "1.1.2")
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
