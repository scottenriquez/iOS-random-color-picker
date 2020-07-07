//
//  ColorsTableViewController.swift
//  Random Colors
//
//  Created by Scott Enriquez on 7/5/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController {
    
    let numberOfRows = 50
    var randomColors: [UIColor] = []
    
    enum Cells {
        static let uiColorCell = "UIColorCell"
    }
    
    enum Segues {
        static let toDetailViewController = "ToColorDetailViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        populateRandomColorsArray()
    }
    
    func populateRandomColorsArray() {
        for _ in 0..<numberOfRows {
            randomColors.append(.random())
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! ColorsDetailViewController
        destinationViewController.backgroundColor = sender as? UIColor  
    }
    
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return randomColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.uiColorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = randomColors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.toDetailViewController, sender: randomColors[indexPath.row])
    }
}
