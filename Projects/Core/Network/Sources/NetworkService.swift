//
//  NetworkService.swift
//  Utils
//
//  Created by 이수현 on 8/11/25.
//

import Foundation
import Alamofire

public protocol NetworkServicing {
    func request(_ urlString: String) async throws -> ResponseDTO
}

public final class NetworkService: NetworkServicing {
    public init() {}

    public func request(_ urlString: String) async throws -> ResponseDTO{

         guard let url = URL(string: urlString) else {
             throw AFError.invalidURL(url: urlString)
         }

        //        return try await AF.request(url)
        //            .serializingDecodable(ResponseDTO.self)
        //            .value


         let urlRequest = URLRequest(url: url)
         let (data, _) = try await URLSession.shared.data(for: urlRequest)
         return try JSONDecoder().decode(ResponseDTO.self, from: data)


    }
}
