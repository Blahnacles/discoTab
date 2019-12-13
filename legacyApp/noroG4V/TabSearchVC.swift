//
//  TabSearchVC.swift
//  noroG4V
//
//  Created by Simon Laffan on 17/10/19.
//  Copyright © 2019 Simon Laffan. All rights reserved.
//

import UIKit

class TabSearchVC: UIViewController {
    //MARK: Properties
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var searchLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: Actions
    @IBAction func executeSearch(_ sender: Any) {
        let url = tabSearch(searchTerm: searchField.text ?? "")
        UIApplication.shared.open(url.absoluteURL)
    }
    @IBAction func backHome(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
}
