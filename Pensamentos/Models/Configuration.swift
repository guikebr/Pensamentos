//
//  Configuration.swift
//  Pensamentos
//
//  Created by Guilherme Santos on 13/05/19.
//  Copyright © 2019 Guilherme Santos. All rights reserved.
//

import Foundation

enum UserDefaultKeys: String {
    case timeInterval = "timeInterval"
    case colorSheme = "colorSheme"
    case autoRefresh = "autoRefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get {
            return defaults.double(forKey: UserDefaultKeys.timeInterval.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultKeys.timeInterval.rawValue)
        }
    }
    
    var colorSheme: Int {
        get {
            return defaults.integer(forKey: UserDefaultKeys.colorSheme.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultKeys.colorSheme.rawValue)
        }
    }
    var autoRefresh: Bool {
        get {
            return defaults.bool(forKey: UserDefaultKeys.autoRefresh.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultKeys.autoRefresh.rawValue)
        }
    }
    
    private init(){
        if defaults.double(forKey: UserDefaultKeys.timeInterval.rawValue) == 0 {
            defaults.set(8.0, forKey: UserDefaultKeys.timeInterval.rawValue)
        }
    }
}
