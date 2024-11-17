import UIKit

final class TrackerViewController: UIViewController {
  
    private let trackerAddButton: UIButton = {
        let button = UIButton.systemButton(with: UIImage(named: "add_tracker") ?? UIImage(),
                                           target: nil,
                                           action:nil)
        button.tintColor = .ypBlack
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let trackerDatePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        picker.preferredDatePickerStyle = .compact
        picker.backgroundColor = .ypGray
        picker.layer.cornerRadius = 8
        picker.layer.masksToBounds = true
        picker.locale = Locale(identifier: "ru_RU")
        picker.translatesAutoresizingMaskIntoConstraints = false
        return picker
    }()
    
    private let trackerLabel: UILabel = {
        let label = UILabel()
        label.text = "Трекеры"
        label.textColor = .ypBlack
        label.font = .systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let trackerSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Поиск"
        searchBar.searchBarStyle = .minimal
        searchBar.layer.cornerRadius = 8
        searchBar.layer.masksToBounds = true
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private let trackerPlugImage: UIImageView = {
        let plugImage = UIImageView(image: UIImage(named: "plugImage"))
        plugImage.contentMode = .scaleAspectFit
        plugImage.translatesAutoresizingMaskIntoConstraints = false
        return plugImage
    }()
    
    private let trackerPlugLabel: UILabel = {
        let plugLabel = UILabel()
        plugLabel.text = "Что будем отслеживать?"
        plugLabel.tintColor = .ypBlack
        plugLabel.font = .systemFont(ofSize: 12)
        plugLabel.translatesAutoresizingMaskIntoConstraints = false
        return plugLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        addConstraints()
        configureAppearance()
        
        
        view.backgroundColor = .white
    }
    
    private func addSubviews() {
        [
            trackerAddButton,
            trackerDatePicker,
            trackerLabel,
            trackerSearchBar,
            trackerPlugImage,
            trackerPlugLabel
        ].forEach(view.addSubview)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            trackerAddButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 6),
            trackerAddButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            trackerAddButton.heightAnchor.constraint(equalToConstant: 42),
            trackerAddButton.widthAnchor.constraint(equalToConstant: 42),
            
            trackerDatePicker.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            trackerDatePicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            trackerDatePicker.heightAnchor.constraint(equalToConstant: 34),
            trackerDatePicker.widthAnchor.constraint(equalToConstant: 100),
            
            trackerLabel.topAnchor.constraint(equalTo: trackerAddButton.bottomAnchor),
            trackerLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            trackerLabel.heightAnchor.constraint(equalToConstant: 41),
            
            trackerSearchBar.topAnchor.constraint(equalTo: trackerLabel.bottomAnchor, constant: 7),
            trackerSearchBar.leadingAnchor.constraint(equalTo: trackerLabel.leadingAnchor),
            trackerSearchBar.trailingAnchor.constraint(equalTo: trackerDatePicker.trailingAnchor),
            trackerSearchBar.heightAnchor.constraint(equalToConstant: 36),
            
            trackerPlugImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            trackerPlugImage.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            
            trackerPlugLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            trackerPlugLabel.topAnchor.constraint(equalTo: trackerPlugImage.bottomAnchor, constant: 8)
        ])
    }
    
    private func configureAppearance() {
        trackerAddButton.addTarget(self,
                             action: #selector(trackerCreateViewController),
                             for: .touchUpInside)
    }
    
}

@objc extension TrackerViewController {
    func trackerCreateViewController() {
        let controller = TrackerCreateViewController()
        let navigationController = UINavigationController(rootViewController: controller)
        present(navigationController, animated: true)
    }
}
extension Notification.Name {
    static let didCreateNewTracker = Notification.Name("didCreateNewTracker")
}
