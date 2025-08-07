import ProjectDescription

let project = Project(
    name: "Home",
    targets: [
        .target(
            name: "Home",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.tuist.feature.home",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(
                    target: "Utils",
                    path: "../../Core/Utils",
                    status: .required,
                    condition: nil
                )
            ]
        )
    ]
)
