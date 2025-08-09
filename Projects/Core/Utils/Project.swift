import ProjectDescription

let project = Project(
    name: "Utils",
    targets: [
        .target(
            name: "Utils",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.tuist.core.utils",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "Alamofire")
            ]
        )
    ]
)
