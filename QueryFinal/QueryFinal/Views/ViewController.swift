//
//  ViewController.swift
//  QueryFinal
//
//  Created by Justin Kim on 7/18/21.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {

    let searchController = UISearchController(searchResultsController: ResultsTableViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        searchController.searchResultsUpdater = self
    }
    
    private func configureUI() {
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        navigationItem.searchController = searchController

    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultsTableViewController
        print(text)
    }
    
    
}

