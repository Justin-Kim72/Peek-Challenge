//
//  QueryConcreteCellModel.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/19/21.
//

import Foundation
import UIKit

struct QueryConcreteCellModel {
    static let concreteCellIdentifier: String = {
        return "QueryConcreteCellModel"
    }()
    
    var name: String
    var ownerLoginName: String
    var productImage: UIImage?
}

extension QueryConcreteCellModel: QueryTableViewCellModel {
    var identifier: String {
        return QueryConcreteCellModel.concreteCellIdentifier
    }
    
    static func demoModel() -> QueryTableViewCellModel {
        return QueryConcreteCellModel(name: "James", ownerLoginName: "Heyoooo", productImage: UIImage(named: "Logo-Kobe-Bryant"))
    }
}
