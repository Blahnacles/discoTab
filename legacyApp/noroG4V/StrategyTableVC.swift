//
//  StrategyTableVC.swift
//  noroG4V
//
//  Created by Simon Laffan on 18/10/19.
//  Copyright © 2019 Simon Laffan. All rights reserved.
//

import Foundation
import UIKit

class StrategyTableVC: UITableViewController {
    //MARK: Properties
    var strategies = [Strategy]()
    
    //MARK: Private Methods
    private func loadSampleStrategies() {
        let title1 = ""
        let desc1 = ""
        let url1 = "https://www.noro.org"
        let tags1 = ["",""]
        let strat1 = Strategy(title: title1, description: desc1, urlString: url1, tags: tags1)
        strategies += [strat1]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the sample data
        loadSampleStrategies()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strategies.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> StrategyTableViewCell {
        let cellIdentifier = "StrategyTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? StrategyTableViewCell else {
            fatalError("dequeued cell is not an instance of StrategyTableViewCell") }
        let strategy = strategies[indexPath.row]
        cell.strategyTitle.text = strategy.title
        cell.strategyDesc.text = strategy.description
        return cell
    }
    //MARK: Actions
}
