//
//  HomeViewController.swift
//  Home
//
//  Created by 이수현 on 8/7/25.
//

import UIKit
import Network

public class HomeViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Home Module"

        let service = NetworkService()

        Task {
            do {
                let result = try await service.request("https://jsonplaceholder.typicode.com/todos/1")
                print(result)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

