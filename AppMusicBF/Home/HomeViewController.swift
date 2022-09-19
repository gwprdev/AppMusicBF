//
//  ViewController.swift
//  AppMusicBF
//
//  Created by Gilvan Wemerson on 16/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var screen:HomeViewControllerScreen?
    
    override func loadView() {
        self.screen = HomeViewControllerScreen()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
    }


}

