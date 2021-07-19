//
//  QueryTableViewCellModel.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/19/21.
//


import Foundation
import UIKit

protocol QueryTableViewCellModel {
    var identifier: String { get }
    static func demoModel() -> QueryTableViewCellModel
}

    

