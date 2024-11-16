import UIKit

final class HabitButtonController: UIViewController {
    
    private let trackerCreatLabel2: UILabel = {
        let label = UILabel()
        label.text = "Создание трекера"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        return label
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
        trackerCreatLabel2,
//        trackerHabitButton,
//        trackerIrregularEventsButton
        ].forEach(view.addSubview)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([

            trackerCreatLabel2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            trackerCreatLabel2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 38),
            
//            trackerHabitButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
//            trackerHabitButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
//            trackerHabitButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            trackerHabitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            trackerHabitButton.heightAnchor.constraint(equalToConstant: 60),
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
