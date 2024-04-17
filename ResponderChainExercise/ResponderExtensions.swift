//
//  AppDelegate.swift
//  ResponderChainExercise
//
//  Created by LoganMacMini on 2024/4/17.
//

import UIKit

//extension ResponderChainViewController: ResponderAction {
//    @objc func fetchWeather(sender: Any?) {
//        print("Fetching weather!")
//
//        let alertController = UIAlertController(title: "Today's weather", message: "Cloudy with a chance of meatballs.", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
//
//        }))
//        present(alertController, animated: true, completion: nil)
//    }
//}

extension UIWindow: ResponderAction {
    
    override func showSomething(_ msg: String) {
        print("msg: \(msg) in UIWindow")
    }
    
    @objc func fetchWeather(sender: Any?) {
        print("Fetching weather UIWindow!")
    }
}

extension UIApplication: ResponderAction {
    
    override func showSomething(_ msg: String) {
        print("msg: \(msg) in UIApplication")
    }
    
    @objc func fetchWeather(sender: Any?) {
        print("Fetching weather UIApplication!")
    }
}

extension AppDelegate: ResponderAction {
    override func showSomething(_ msg: String) {
        print("msg: \(msg) in AppDelegate")
    }
    
    @objc func fetchWeather(sender: Any?) {
        print("Fetching weather AppDelegate!")
    }
}
