// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AstraCoreUI",
	platforms: [
		.iOS(.v15)
	],
    products: [
        .library(
            name: "AstraCoreUI",
            targets: [
				"AstraCoreUI",
			]
		),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AstraCoreUI",
            dependencies: [
			]
		),
        .testTarget(
            name: "AstraCoreUITests",
            dependencies: [
				"AstraCoreUI",
			]
		),
    ]
)
