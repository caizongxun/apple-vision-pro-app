// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "apple-vision-pro-app",
    platforms: [
        .visionOS(.v1)
    ],
    targets: [
        .target(
            name: "VisionProApp",
            path: "App"
        )
    ]
)
