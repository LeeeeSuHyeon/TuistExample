import ProjectDescription
import ProjectDescriptionHelpers

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
                // 상대 주소 설정
//                .project(target: "Home", path: "../Feature/Home"),
//                .project(target: "Utils", path: "../Core/Utils")

                // 절대 주소 설정
                .homeFeature,
                .utilsCore
            ]
        )
    ]
)
