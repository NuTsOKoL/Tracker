import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if #available(iOS 13.4, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = UIColor.white
            UITabBar.appearance().standardAppearance = tabBarAppearance

            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        
        let trackerViewController = TrackerViewController()
        trackerViewController.tabBarItem = UITabBarItem(title: "Трекеры",
                                                        image: UIImage(named: "circle"),
                                                        selectedImage: UIImage(named: "circle")
        )
        
        let statViewController = StatViewController()
        statViewController.tabBarItem = UITabBarItem(title: "Статистика",
                                                     image: UIImage(named: "rabbit"),
                                                     selectedImage: UIImage(named: "rabbit")
        )
        
        self.viewControllers = [trackerViewController, statViewController]
    }
}


