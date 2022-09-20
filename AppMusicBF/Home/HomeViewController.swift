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
        self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
    }
    
    
}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CardData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.identifier, for: indexPath) as? CardTableViewCell
        cell?.setupCell(data: CardData[indexPath.row])

        return cell ?? UITableViewCell()
    }
    
    private func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}
