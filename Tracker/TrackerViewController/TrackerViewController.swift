import UIKit

final class TrackerViewController: UIViewController {
  
    private let addTrackerButton: UIButton = {
        let button = UIButton.systemButton(with: UIImage(named: "add_tracker") ?? UIImage(),
                                           target: nil,
                                           action:nil)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
            addTrackerButton
        ].forEach(view.addSubview)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
        addTrackerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 6),
        addTrackerButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        addTrackerButton.heightAnchor.constraint(equalToConstant: 42),
        addTrackerButton.widthAnchor.constraint(equalToConstant: 42)
            ])}
    
    private func configureAppearance() {
        addTrackerButton.addTarget(self,
                             action: #selector(trackerCreateViewController),
                             for: .touchUpInside)
    }
    
}

@objc extension TrackerViewController {
    func trackerCreateViewController() {
        let controller = TrackerCreateViewController()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
    }
}
