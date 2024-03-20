//
//  HelloWorldViewController.swift
//  NoStoryboard
//
//  Created by Herlandro Hermogenes on 20/03/2024.
//

import UIKit

class HelloWorldViewController: UIViewController {

    lazy private var helloWorldLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World!"
        label.textColor = UIColor.white
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }

    func setupView() {
        self.view.backgroundColor = UIColor.systemBlue
        self.view.addSubview(self.helloWorldLabel)
    }

    func setupLayout() {
        let helloWorldLabelConstraints = [
            self.helloWorldLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.helloWorldLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(helloWorldLabelConstraints)
    }

}
