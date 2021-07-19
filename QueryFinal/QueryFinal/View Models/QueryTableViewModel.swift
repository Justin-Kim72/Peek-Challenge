//
//  QueryTableViewModel.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/19/21.
//


import UIKit

protocol QueryTableViewModel {
    var cellModels:[[QueryTableViewCellModel]] { get }
    func configure(tableView: UITableView)
    static func demoModel() -> QueryTableViewModel
}

extension QueryTableViewModel {
    var numberOfSections: Int {
        return cellModels.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        return cellModels[section].count
    }
    
    func cellModel(at indexPath: IndexPath) -> QueryTableViewCellModel {
        return cellModels[indexPath.section][indexPath.row]
    }
}
