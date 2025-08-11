//
//  Project.swift
//  AppManifests
//
//  Created by 이수현 on 8/11/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let networkProject = Project(
    name: Core.network.name,
    targets: [
        .target(
            name: Core.network.name,
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.\(Core.network.name)",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "Alamofire")
            ]
        )
    ]
)
