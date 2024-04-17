//
//  UIResponder+Ext.swift
//  LionTravel
//
//  Created by LoganMacMini on 2024/4/16.
//


import UIKit

extension UIResponder {

    // 必須定義成 @objc 才可以被覆寫。
    @objc func showSomething(_ msg: String) {

        // 預設將呼叫轉給上層（next）處理。
        next?.showSomething(msg)
    }

}
