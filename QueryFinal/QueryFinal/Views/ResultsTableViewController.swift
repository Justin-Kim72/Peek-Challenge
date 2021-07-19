//
//  ResultsTableViewController.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/19/21.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    var tableViewModel:QueryTableViewModel = QueryConcreteTableViewModel.demoModel()
    
    override func viewDidLoad() {
        tableViewModel.configure(tableView: tableView)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.numberOfRows(in: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tableViewModel.cellModel(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: model.identifier, for: indexPath)
        guard let configurableCell = cell as? QueryConfigurableTableViewCell else { fatalError("Cell is not configurable") }
        configurableCell.configure(with: model)
        return cell
    }
}
    

