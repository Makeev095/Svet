////
////  TabBarController.swift
////  Svet
////
////  Created by Макей 😈 on 13.08.2024.
//
//
//import UIKit
//
enum Tabs: Int {
    case tasks
    case tests
    case meditation
    case important
    case account
}

//final class TabBarController: UITabBarController {
//    
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        configure()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func configure() {
//        
//        tabBar.tintColor = Resources.Colors.active
//        tabBar.barTintColor = Resources.Colors.inactive
//        tabBar.backgroundColor = .white
//        tabBar.layer.cornerRadius = 30
//        self.tabBar.frame = CGRect(x: 16, y: view.frame.maxY - 20, width: view.frame.size.width / 2 - 32, height: 104)
//        
//        let tasksViewController = UIViewController()
//        let testsViewController = UIViewController()
//        let meditationViewController = UIViewController()
//        let importantViewController = UIViewController()
//        let accountViewController = UIViewController()
//        
//        let tasksNavigation = UINavigationController(rootViewController: tasksViewController)
//        let testsNavigation = UINavigationController(rootViewController: testsViewController)
//        let meditationNavigation = UINavigationController(rootViewController: meditationViewController)
//        let importantNavigation = UINavigationController(rootViewController: importantViewController)
//        let accountNavigation = UINavigationController(rootViewController: accountViewController)
//        
//        tasksNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.tasks, image: Resources.Images.TabBar.tasks, tag: Tabs.tasks.rawValue)
//        testsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.tests, image: Resources.Images.TabBar.tests, tag: Tabs.tests.rawValue)
//        meditationNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.meditation, image: Resources.Images.TabBar.meditation, tag: Tabs.meditation.rawValue)
//        importantNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.important, image: Resources.Images.TabBar.important, tag: Tabs.important.rawValue)
//        accountNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.account, image: Resources.Images.TabBar.account, tag: Tabs.account.rawValue)
//        
//        setViewControllers([
//            tasksNavigation,
//            testsNavigation,
//            meditationNavigation,
//            importantNavigation,
//            accountNavigation
//        ], animated: false)
//    }
//}

import UIKit

final class TabBarController: UITabBarController {
    
    private let customTabBarBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.layer.masksToBounds = true
        return view
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let tabBarHeight: CGFloat = 104
        let bottomPadding = view.safeAreaInsets.bottom + 10
        let tabBarWidth = view.frame.size.width - 32
        
        // Adjust the frame for customTabBarBackgroundView to match the tabBar
        customTabBarBackgroundView.frame = CGRect(
            x: 16,
            y: view.frame.height - tabBarHeight - bottomPadding,
            width: tabBarWidth,
            height: tabBarHeight
        )
        
        // Adjust the tabBar frame to match customTabBarBackgroundView exactly
        tabBar.frame = customTabBarBackgroundView.frame
    }
    
    private func configure() {
        
        // Add the customTabBarBackgroundView to the view hierarchy
        view.addSubview(customTabBarBackgroundView)
        view.bringSubviewToFront(tabBar)
        
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = .clear // Make the tabBar itself transparent
        tabBar.backgroundImage = UIImage() // Remove the default background image
        tabBar.shadowImage = UIImage() // Remove the default shadow image
        tabBar.layer.cornerRadius = 30
        tabBar.layer.masksToBounds = true

        let tasksViewController = UIViewController()
        let testsViewController = UIViewController()
        let meditationViewController = UIViewController()
        let importantViewController = UIViewController()
        let accountViewController = UIViewController()
        
        let tasksNavigation = UINavigationController(rootViewController: tasksViewController)
        let testsNavigation = UINavigationController(rootViewController: testsViewController)
        let meditationNavigation = UINavigationController(rootViewController: meditationViewController)
        let importantNavigation = UINavigationController(rootViewController: importantViewController)
        let accountNavigation = UINavigationController(rootViewController: accountViewController)
        
        tasksNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.tasks, image: Resources.Images.TabBar.tasks, tag: Tabs.tasks.rawValue)
        testsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.tests, image: Resources.Images.TabBar.tests, tag: Tabs.tests.rawValue)
        meditationNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.meditation, image: Resources.Images.TabBar.meditation, tag: Tabs.meditation.rawValue)
        importantNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.important, image: Resources.Images.TabBar.important, tag: Tabs.important.rawValue)
        accountNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.account, image: Resources.Images.TabBar.account, tag: Tabs.account.rawValue)
        
        setViewControllers([
            tasksNavigation,
            testsNavigation,
            meditationNavigation,
            importantNavigation,
            accountNavigation
        ], animated: false)
    }
}
