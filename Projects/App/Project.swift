import ProjectDescription

let project = Project(
    name: "App",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "com.tuist.app",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Home", path: "../Feature/Home"),
                .project(target: "Utils", path: "../Core/Utils")
            ]
        )
    ]
)
