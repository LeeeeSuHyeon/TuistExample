//
//  Dependencies.swift
//  AppManifests
//
//  Created by 이수현 on 8/7/25.
//

import ProjectDescription

public extension TargetDependency {
    static let homeFeature: TargetDependency = .project(
        target: Feature.home.name,
        path: .relativeToRoot(Feature.home.rootPath)
    )

    static let utilsCore: TargetDependency = .project(
        target: Core.utils.name,
        path: .relativeToRoot(Core.utils.rootPath)
    )

    static let networkCore: TargetDependency = .project(
        target: Core.network.name,
        path: .relativeToRoot(Core.network.rootPath)
    )
}

/*
 relativeToRoot

 - .relativeToRoot("Projects/Feature/Home")
 - 프로젝트 루트(tuist generate를 실행한 디렉토리) 기준으로
     Projects/Feature/Home 폴더에 있는 Project.swift를 찾겠다는 의미
 */
