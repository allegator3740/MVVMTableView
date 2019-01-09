//
//  TableViewController.swift
//  MVVMTableView
//
//  Created by Oleg on 07.01.2019.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel : TableViewModelViewType?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = ViewModel()
        

    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell,
              let viewModel = viewModel else { return UITableViewCell() }

        let profile = viewModel.profiles[indexPath.row]
        tableViewCell.nameLabel.text = "\(profile.name) \(profile.surname)"
        tableViewCell.ageLabel.text = "\(profile.age)"

        return tableViewCell
    }
    

   

}
