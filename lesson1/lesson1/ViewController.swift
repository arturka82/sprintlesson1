//
//  ViewController.swift
//  lesson1
//
//  Created by GEDAKYAN Artur on 02.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    private lazy var gradientView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 125, height: 125))
        let gradient = CAGradientLayer()

        gradient.frame = view.bounds
        gradient.colors = [UIColor.blue.cgColor, UIColor.gray.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradient.cornerRadius = 10

        view.layer.insertSublayer(gradient, at: 0)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.backgroundColor = .white
    }

    private func setupView() {
        view.addSubview(gradientView)
        gradientView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientView.widthAnchor.constraint(equalToConstant: 125),
            gradientView.heightAnchor.constraint(equalToConstant: 125)
        ])
        applyShadow(view: gradientView)
    }

    private func applyShadow(view: UIView) {
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = 4
        view.layer.masksToBounds = false
    }
}
