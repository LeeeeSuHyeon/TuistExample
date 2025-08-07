//
//  HomeViewController.swift
//  Home
//
//  Created by 이수현 on 8/7/25.
//

import UIKit
import Utils

public class HomeViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Home Module"

        print("HomeViewController - \(Utils.sayHi())")
    }
}
