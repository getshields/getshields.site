// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Get Shields",
    products: [
        .executable(name: "GetShields", targets: ["GetShields"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.1.0"),
        .package(url: "https://github.com/getshields/steven-paul-jobs-theme.git", from: "0.0.5")
    ],
    targets: [
        .target(
            name: "GetShields",
            dependencies: ["Publish",
                           "StevenPaulJobsTheme"]
        )
    ]
)
