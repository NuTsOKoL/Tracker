import UIKit

final class TrackerCreateViewController: UIViewController {
    
    private let trackerCreatLabel: UILabel = {
        let label = UILabel()
        label.text = "Создание трекера"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let trackerHabitButton: UIButton = {
        let habitButton = UIButton()
        habitButton.setTitle("Привычка", for: .normal)
        habitButton.setTitleColor(.white, for: .normal)
        habitButton.titleLabel?.font = .systemFont(ofSize: 16)
        habitButton.backgroundColor = .ypBlack
        habitButton.layer.cornerRadius = 16
        habitButton.layer.masksToBounds = true
        habitButton.translatesAutoresizingMaskIntoConstraints = false
        return habitButton
    }()
    
    private let irregularEventsButton: UIButton = {
        let irregularEventsButton = UIButton()
        irregularEventsButton.setTitle("Нерегулярные события", for: .normal)
        irregularEventsButton.setTitleColor(.white, for: .normal)
        irregularEventsButton.titleLabel?.font = .systemFont(ofSize: 16)
        irregularEventsButton.backgroundColor = .ypBlack
        irregularEventsButton.layer.cornerRadius = 16
        irregularEventsButton.layer.masksToBounds = true
        irregularEventsButton.translatesAutoresizingMaskIntoConstraints = false
        return irregularEventsButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        addConstraints()
        configureAppearance()
        
        view.backgroundColor = .white
        
    }
    
    func addSubviews() {
        [
        trackerCreatLabel,
        trackerHabitButton,
        irregularEventsButton
        ].forEach(view.addSubview)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([

            trackerCreatLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            trackerCreatLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 38),
            
            trackerHabitButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            trackerHabitButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            trackerHabitButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            trackerHabitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            trackerHabitButton.heightAnchor.constraint(equalToConstant: 60),
            
            irregularEventsButton.topAnchor.constraint(equalTo: trackerHabitButton.bottomAnchor, constant: 16),
            irregularEventsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            irregularEventsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            irregularEventsButton.heightAnchor.constraint(equalToConstant: 60),
            
       ])
    }
    
    func configureAppearance() {
        trackerHabitButton.addTarget(self,
                                     action: #selector(habitButtonController),
                                     for: .touchUpInside)
        
        irregularEventsButton.addTarget(self,
                                               action: #selector(irregularEventsButtonController),
                                               for: .touchUpInside)
    }
}

@objc extension TrackerCreateViewController {
    func habitButtonController() {
        let controller = HabitButtonController()
        controller.modalPresentationStyle = .popover
        self.present(controller, animated: true)
        }

    func irregularEventsButtonController() {
        let controller = IrregularEventsButtonController()
        controller.modalPresentationStyle = .popover
        self.present(controller, animated: true)
    }
}
