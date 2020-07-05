//
//  ColorsTableViewController.swift
//  Random Colors
//
//  Created by Scott Enriquez on 7/5/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tempButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ToColorDetailsViewController", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
