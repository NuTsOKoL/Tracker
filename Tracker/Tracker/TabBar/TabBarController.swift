import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trackerViewController = TrackerViewController()
        trackerViewController.tabBarItem = UITabBarItem(title: "Трекеры",
                                                        image: UIImage(named: "circle"),
                                                        selectedImage: nil)
        let navigationController =  UINavigationController(rootViewController: trackerViewController)
        
        
        let statViewController = StatViewController()
        statViewController.tabBarItem = UITabBarItem(title: "Статистика",
                                                     image: UIImage(named: "rabbit"),
                                                     selectedImage: nil)
        
        
       viewControllers = [navigationController, statViewController]
    }
}


