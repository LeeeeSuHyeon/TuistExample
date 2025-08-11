import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Feature.home.name,
    targets: [
        .target(
            name: Feature.home.name,
            destinations: .iOS,
            product: .framework,
            bundleId: "com.tuist.\(Feature.home.name)",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                // 상대 주소 설정
//                .project(
//                    target: "Utils",
//                    path: "../../Core/Utils",
//                    status: .required,
//                    condition: nil
//                )
                // 절대 주소 설정
                .utilsCore,
                .networkCore,
            ]
        )
    ]
)
