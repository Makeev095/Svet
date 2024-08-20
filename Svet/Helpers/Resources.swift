//
//  Resources.swift
//  Svet
//
//  Created by Макей 😈 on 13.08.2024.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#5E2DDD")
        static var inactive = UIColor(hexString: "#292D32")
    }
    
    enum Strings {
        enum TabBar {
            static var tasks = "Задания"
            static var tests = "Тесты"
            static var meditation = "Медитации"
            static var important = "Важное"
            static var account = "Аккаунт"
        }
    }
    
    enum Images {
        enum TabBar {
            static var tasks = UIImage(named: "tasks_tab")
            static var tests = UIImage(named: "tests_tab")
            static var meditation = UIImage(named: "meditation_tab")
            static var important = UIImage(named: "important_tab")
            static var account = UIImage(named: "account_tab")
        }
    }
}
