//
//  UserDefaultsExtension.swift
//  UserDefaultsHelper
//
//  Created by Andrii Vitvitskyi on 1/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

//Example - UserDefaultExtension.
import Foundation

extension UserDefaults {
    //Comment: Create struct for you controller and subscribe on protocol which you need.
    
    struct Login  {
        
    }
}

// MARK - Implementation for BoolUserDefaultable

extension UserDefaults.Login: BoolUserDefaultable {
    enum BoolDefaultKey: String {
        case isUserLoggedIn
    }
}

// MARK - Implementation for StringDefaultable

extension UserDefaults.Login: StringDefaultable {
    enum StringDefaultKey: String {
        case name
    }
}

// MARK - Implementation for DoubleDefaultable

extension UserDefaults.Login: DoubleDefaultable {
    enum DoubleDefaultKey: String {
        case location
    }
}

// MARK - Implementation for FloatDefautable

extension UserDefaults.Login: FloatDefautable {
    enum FloatDefaultKey: String {
        case floatExample
    }
}

// MARK - Implementation for URLDefautable

extension UserDefaults.Login: URLDefautable {
    enum URLDefaultKey: String {
        case urlExample
    }
}

// MARK - Implementation for AnyDefautable

extension UserDefaults.Login: AnyDefautable {
    enum AnyDefaultKey: String {
        case anyExample
    }
}
