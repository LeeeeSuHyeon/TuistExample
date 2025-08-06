//
//  ViewController.swift
//  TuistExample
//
//  Created by 이수현 on 8/5/25.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = TuistExampleAsset.accentColor.color

        let label = UILabel()
        label.text = "Hello from UIKit!"
        label.textColor = UIColor(asset: TuistExampleAsset.accentColor)
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false

        let imageView = UIImageView()
        imageView.image = TuistExampleAsset.aImage.image
        imageView.translatesAutoresizingMaskIntoConstraints = false

//        view.addSubview(label)
        view.addSubview(imageView)

        NSLayoutConstraint.activate([
//            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 450)

//            imageView.topAnchor.constraint(equalTo: view.topAnchor),
//            imageView.leftAnchor.constraint(equalTo: view.leftAnchor),
//            imageView.rightAnchor.constraint(equalTo: view.rightAnchor),
//            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
