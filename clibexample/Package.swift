// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "clibexample",
    products: [
        .executable(name: "clibcallfromswift", targets: ["clibcallfromswift"]),
        .executable(name: "clibcallfromc", targets: ["clibcallfromc"]),
    ],
    dependencies: [
        .package(url: "https://github.com/theswiftdev/cfactorial", .branch("master")),
    ],
    targets: [
        .target(
            name: "clibcallfromswift",
            dependencies: ["cfactorial"],
            path: "./Sources/clibcallfromswift/",
            sources: ["main.swift"]
        ),
        .target(
            name: "clibcallfromc",
            dependencies: ["cfactorial"],
            path: "./Sources/clibcallfromc"
        ),
    ]
)
