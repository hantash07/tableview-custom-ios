//
//  ViewController.swift
//  tableview-custom-ios
//
//  Created by Hantash on 18/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var dataModel = [DataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        populateData()
    }
    
    private func setupTableView() {
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(SimpleTableViewCell.nib(), forCellReuseIdentifier: SimpleTableViewCell.identifier)
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func populateData() {
        dataModel.append(DataModel(name: "pakistan", image: "pakistan"))
        dataModel.append(DataModel(name: "america", image: "america"))
        dataModel.append(DataModel(name: "canada", image: "canada"))
        dataModel.append(DataModel(name: "turkey", image: "turkey"))
        dataModel.append(DataModel(name: "england", image: "england"))
        dataModel.append(DataModel(name: "germany", image: "germany"))
        dataModel.append(DataModel(name: "philippine", image: "philippine"))
        dataModel.append(DataModel(name: "Unknown Country 1", image: nil))
        dataModel.append(DataModel(name: "Unknown Country 2", image: nil))
        dataModel.append(DataModel(name: "Unknown Country 3", image: nil))
        dataModel.append(DataModel(name: "Unknown Country 4", image: nil))
        dataModel.append(DataModel(name: "Unknown Country 5", image: nil))
        dataModel.append(DataModel(name: "Unknown Country 6", image: nil))
        dataModel.append(DataModel(name: "Unknown Country 7", image: nil))
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(dataModel[indexPath.row].name) is selected.")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let data = dataModel[indexPath.row]
        if data.image != nil {
            return 80
        }
        return 40
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = dataModel[indexPath.row]
        if let image = data.image {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            cell.configureCell(countryName: image)
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath) as! SimpleTableViewCell
        cell.configureCell(text: data.name)
        return cell
    }
}
