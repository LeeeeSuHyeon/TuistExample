import ProjectDescription
import ProjectDescriptionHelpers

let utilsProject = Project(
    name: Core.utils.name,
    targets: [
        .target(
            name: Core.utils.name,
            destinations: .iOS,
            product: .framework,
            bundleId: "com.tuist.\(Core.utils.name)",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
        )
    ]
)
