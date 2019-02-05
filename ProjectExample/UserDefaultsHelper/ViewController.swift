//
//  ViewController.swift
//  UserDefaultsHelper
//
//  Created by Andrii Vitvitskyi on 1/11/19.
//  Copyright © 2019 Andrii Vitvitskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - Example - Set "Bool" to UserDefaults
        UserDefaults.Login.set(true, forKey: .isUserLoggedIn)
        
        // MARK: - Example - Set "String" to UserDefaults
        UserDefaults.Login.set("Easy", forKey: .name)
        
        // MARK: - Example - Set "Double" to UserDefaults
        UserDefaults.Login.set(12.22, forKey: .location)
        
        // MARK: - Example - Set "Float" to UserDefaults
        let testFloat: Float = 0.222
        UserDefaults.Login.set(testFloat, forKey: .floatExample)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // MARK: - Example - Get "Bool" from UserDefaults
        let exampleBool = UserDefaults.Login.string(forKey: .name)
        print(exampleBool ?? "")
        
        // MARK: - Example - Get "String" from UserDefaults
        let exampleString = UserDefaults.Login.string(forKey: .name)
        print(exampleString ?? "")
        
        // MARK: - Example - Get "Double" from UserDefaults
        let exampleDouble: Double = UserDefaults.Login.double(forKey: .location)
        print(exampleDouble)
        
        // MARK: - Example - Get "Float" from UserDefaults
        let exampleFloat: Float = UserDefaults.Login.float(forKey: .floatExample)
        print(exampleFloat)
        
        // MARK: - Example - Get "URL?" from UserDefaults
        let exampleURL: URL? = UserDefaults.Login.url(forKey: .urlExample)
        print(exampleURL ?? "")
        
        // MARK: - Example - Get "URL?" from UserDefaults
        let exampleAny: Any? = UserDefaults.Login.any(forKey: .anyExample)
        print(exampleAny ?? "")
    }
}









