//
//  ViewController.swift
//  TestProject
//
//  Created by M_934098 on 7/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loadXibButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadXibButton(_ sender: Any) {
        let homeView = HomeViewController(nibName: "HomeViewController", bundle: nil)
        self.navigationController?.pushViewController(homeView, animated: true)
    }
}

