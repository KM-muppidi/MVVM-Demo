//
//  HomeViewController.swift
//  TestProject
//
//  Created by M_934098 on 7/12/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTextLabel: UILabel!
    @IBOutlet weak var changeLanguageButton: UIButton!
    
    var viewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        

        // Do any additional setup after loading the view.
    }
    @IBAction func changeLanguageButtonTapped(_ sender: Any) {
        viewModel?.userTappedLanguageChangeButton()
    }
    
    func bindViewModel() {
        if let viewModel = viewModel {
            viewModel.homeLabelText.bind({ (homeLabelText) in DispatchQueue.main.async {
                self.homeTextLabel.text = homeLabelText
            }
            })
        }
    }
}
