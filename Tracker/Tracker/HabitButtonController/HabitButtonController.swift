import UIKit

final class HabitButtonController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
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
    
    private let habitTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.isScrollEnabled = false
        tableView.layer.cornerRadius = 16
        tableView.layer.masksToBounds = true  // Закругление углов таблицы
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorInset = .zero  // Убираем внутренние отступы для разделителей
        tableView.separatorColor = .lightGray  // Цвет разделителей
        return tableView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        addConstraints()
        configureAppearance()
        
        view.backgroundColor = .white
        
        habitTableView.dataSource = self
        habitTableView.delegate = self
        habitTableView.register(UITableViewCell.self, forCellReuseIdentifier: "optionCell")
        habitTableView.tableFooterView = UIView()
        
    }
    
    func addSubviews() {
        [
        habitLabel,
        habitTextField,
        habitTableView,
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

            habitTableView.topAnchor.constraint(equalTo: habitTextField.bottomAnchor, constant: 24),
            habitTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            habitTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            habitTableView.heightAnchor.constraint(equalToConstant: 150)
            
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2 // Категория и Расписание
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75 // Устанавливаем высоту ячейки
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "Категория"
        } else {
            cell.textLabel?.text = "Расписание"
        }
        
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = .ypBackground
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 {
            // Убираем разделитель для последней ячейки
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        } else {
            // Восстанавливаем стандартный разделитель для остальных ячеек
            cell.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
    }
}
