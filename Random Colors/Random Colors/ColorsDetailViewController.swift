//
//  ColorsDetailViewController.swift
//  Random Colors
//
//  Created by Scott Enriquez on 7/5/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    
    var backgroundColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor ?? .white
    }

}
