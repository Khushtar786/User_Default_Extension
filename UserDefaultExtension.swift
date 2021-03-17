//  UserDefaultExtension.swift
//  Created by Jugal Shaktawat on 13/03/21.
//  Copyright © 2021 Jugal Shaktawat. All rights reserved.


import Foundation

enum UDConstants: String {
    case is_Login = "is_Login"
    case User_Name = "User_Name"
}

extension UserDefaults {
    
    static var is_Login: Bool {
        get {
            return getBool(forKey: .is_Login)
        } set {
            return updateValue(newValue, forKey: .is_Login)
        }
    }
    static var User_Name: String {
        get {
            return getString(forKey: .User_Name) ?? ""
        } set {
            return updateValue(newValue, forKey: .User_Name)
        }
    }
    
    //Functions of The UserDefault
    static func getValue(forKey key: UDConstants) -> Any? {
        return standard.value(forKey: key.rawValue)
    }
    
    static func getString(forKey key: UDConstants) -> String? {
        return standard.string(forKey: key.rawValue)
    }
    
    static func getDouble(forKey key: UDConstants) -> Double {
        return standard.double(forKey: key.rawValue)
    }
    
    static func getInteger(forKey key: UDConstants) -> Int {
        return standard.integer(forKey: key.rawValue)
    }
    
    static func getDictionary(forKey key: UDConstants) -> [String: Any]? {
        return standard.dictionary(forKey: key.rawValue)
    }
    
    static func getBool(forKey key: UDConstants) -> Bool {
        return standard.bool(forKey: key.rawValue)
    }
    
    static func updateValue(_ value: Any?, forKey key: UDConstants) {
        standard.set(value, forKey: key.rawValue)
    }
    
}
