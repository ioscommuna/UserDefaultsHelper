//
//  File.swift
//  UserDefaultsHelper
//
//  Created by Andrii Vitvitskyi on 1/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation


protocol BoolUserDefaultable: KeyNamespaceable {
    associatedtype BoolDefaultKey: RawRepresentable
}

protocol StringDefaultable: KeyNamespaceable {
    associatedtype StringDefaultKey: RawRepresentable
}

protocol DoubleDefaultable: KeyNamespaceable {
    associatedtype DoubleDefaultKey: RawRepresentable
}

protocol FloatDefautable: KeyNamespaceable {
    associatedtype FloatDefaultKey: RawRepresentable
}

protocol URLDefautable: KeyNamespaceable {
    associatedtype URLDefaultKey: RawRepresentable
}

protocol AnyDefautable: KeyNamespaceable {
    associatedtype AnyDefaultKey: RawRepresentable
}

protocol KeyNamespaceable {
    
}

extension KeyNamespaceable {
    static func namespace<T>(_ key: T) -> String
        where T: RawRepresentable {
            print("\(self).\(key.rawValue)")
            return "\(self).\(key.rawValue)"
    }
}

// MARK: - UserDefault - Bool

extension BoolUserDefaultable where BoolDefaultKey.RawValue == String {
    
    static func set(_ value: Bool, forKey key: BoolDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func bool(forKey key: BoolDefaultKey) -> Bool {
        let key = namespace(key)
        return UserDefaults.standard.bool(forKey: key)
    }
}

// MARK: - UserDefault - String

extension StringDefaultable where StringDefaultKey.RawValue == String {
    
    static func set(_ value: String, forKey key: StringDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func string(forKey key: StringDefaultKey) -> String? {
        let key = namespace(key)
        return UserDefaults.standard.string(forKey: key) 
    }
}

// MARK: - UserDefault - Double

extension DoubleDefaultable where DoubleDefaultKey.RawValue == String {
    
    static func set(_ value: Double, forKey key: DoubleDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func double(forKey key: DoubleDefaultKey) -> Double {
        let key = namespace(key)
        return UserDefaults.standard.double(forKey: key)
    }
}

// MARK: - UserDefault - Float

extension FloatDefautable where FloatDefaultKey.RawValue == String {
    
    static func set(_ value: Float, forKey key: FloatDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func float(forKey key: FloatDefaultKey) -> Float {
        let key = namespace(key)
        return UserDefaults.standard.float(forKey: key)
    }
}

// MARK: - UserDefault - URL?

extension URLDefautable where URLDefaultKey.RawValue == String {
    
    static func set(_ value: URL?, forKey key: URLDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func url(forKey key: URLDefaultKey) -> URL? {
        let key = namespace(key)
        return UserDefaults.standard.url(forKey: key)
    }
}

// MARK: - UserDefault - Any?

extension AnyDefautable where AnyDefaultKey.RawValue == String {
    
    static func set(_ value: Any?, forKey key: AnyDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func any(forKey key: AnyDefaultKey) -> Any? {
        let key = namespace(key)
        return UserDefaults.standard.object(forKey: key)
    }
}

typealias UserDefaultsAllTypes = BoolUserDefaultable & StringDefaultable
