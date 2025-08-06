import ProjectDescription

let project = Project(
    name: "TuistExample",
    targets: [
        .target(
            name: "TuistExample",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.TuistExample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TuistExample/Sources/**"],
            resources: ["TuistExample/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TuistExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.TuistExampleTests",
            infoPlist: .default,
            sources: ["TuistExample/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistExample")]
        ),
    ]
)
