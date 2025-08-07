//
//  ModuleNaming.swift
//  AppManifests
//
//  Created by 이수현 on 8/7/25.
//

import ProjectDescription

public protocol ModuleNaming: RawRepresentable<String> {
    var name: String { get }
    var rootPath: String { get }
}

extension ModuleNaming {
    public var name: String { rawValue }
    var path: String { "\(type(of: self))/\(name)"}
    public var rootPath: String { "Projects/\(path)"}
}
