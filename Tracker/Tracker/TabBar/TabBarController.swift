import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trackerViewController = TrackersViewController()
        trackerViewController.tabBarItem = UITabBarItem(title: "Трекеры",
                                                        image: UIImage(named: "circle"),
                                                        selectedImage: nil)
        let navigationController =  UINavigationController(rootViewController: trackerViewController)
        
        
        let statViewController = StatisticsViewController()
        statViewController.tabBarItem = UITabBarItem(title: "Статистика",
                                                     image: UIImage(named: "rabbit"),
                                                     selectedImage: nil)
        
        
       viewControllers = [navigationController, statViewController]
    }
}
