//
//  AppDelegate.swift
//  ResponderChainExercise
//
//  Created by LoganMacMini on 2024/4/17.
//

import UIKit

class ResponderChainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        navigationItem.title = "Responder Chain"

        view.addSubview(responderButton)

        responderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        responderButton.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 3).isActive = true
    }

    let responderButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Fire Responder", for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(responderPressed), for: .primaryActionTriggered)
        return button
    }()

    @objc func responderPressed() {

//        UIApplication.shared.sendAction(
//            #selector(ResponderAction.fetchWeather), 
//            to: nil, // target = nil
//            from: self, 
//            for: nil)
        showSomething("hi, there")
    }
}

@objc protocol ResponderAction: AnyObject {
    func fetchWeather(sender: Any?)
}
