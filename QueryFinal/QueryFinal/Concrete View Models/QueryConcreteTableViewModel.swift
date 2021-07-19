//
//  QueryConcreteTableViewModel.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/19/21.
//

import UIKit

struct QueryConcreteTableViewModel: QueryTableViewModel {
    var cellModels: [[QueryTableViewCellModel]] = []
    
    func configure(tableView: UITableView) {
        tableView.register(QueryConcreteCell.self, forCellReuseIdentifier: QueryConcreteCellModel.concreteCellIdentifier)
    }
    
    static func demoModel() -> QueryTableViewModel {
        var model = QueryConcreteTableViewModel()
        let cellModels:[QueryTableViewCellModel] = [QueryConcreteCellModel.demoModel(),QueryConcreteCellModel.demoModel(),QueryConcreteCellModel.demoModel()]
        model.cellModels.append(cellModels)
        return model
    }
}
