//
//  ResponseDTO.swift
//  Network
//
//  Created by 이수현 on 8/11/25.
//

import Foundation

public struct ResponseDTO: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
