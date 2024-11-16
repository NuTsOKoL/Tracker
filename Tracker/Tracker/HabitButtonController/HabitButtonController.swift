import UIKit

final class HabitButtonController: UIViewController {
    
    private let habitLabel: UILabel = {
        let label = UILabel()
        label.text = "Новая привычка"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let habitTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Введите название трекера"
        textField.borderStyle = .none
        textField.backgroundColor = .ypBackground
        textField.layer.cornerRadius = 16
        textField.layer.masksToBounds = true
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        habitLabel,
        habitTextField,
        ].forEach(view.addSubview)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([

            habitLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            habitLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 38),
            
            habitTextField.topAnchor.constraint(equalTo: habitLabel.bottomAnchor, constant: 24),
            habitTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            habitTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            habitTextField.heightAnchor.constraint(equalToConstant: 75),
//
//            trackerIrregularEventsButton.topAnchor.constraint(equalTo: trackerHabitButton.bottomAnchor, constant: 16),
//            trackerIrregularEventsButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            trackerIrregularEventsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            trackerIrregularEventsButton.heightAnchor.constraint(equalToConstant: 60),
            
       ])
    }
    
    func configureAppearance() {
//        trackerHabitButton.addTarget(self,
//                                     action: #selector(trackerHabitButtonController),
//                                     for: .touchUpInside)
//        
//        trackerIrregularEventsButton.addTarget(self,
//                                               action: #selector(trackerIrregularEventsButtonController),
//                                               for: .touchUpInside)
    }
    
}
