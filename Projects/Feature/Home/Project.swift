import ProjectDescription
import ProjectDescriptionHelpers

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
                // 상대 주소 설정
//                .project(
//                    target: "Utils",
//                    path: "../../Core/Utils",
//                    status: .required,
//                    condition: nil
//                )
                // 절대 주소 설정
                .utilsCore
            ]
        )
    ]
)
