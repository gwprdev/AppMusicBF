//
//  DetailViewControllerScreen.swift
//  AppMusicBF
//
//  Created by Gilvan Wemerson on 23/09/22.
//

import UIKit

class DetailViewControllerScreen: UIView {
    var cardModel: CardViewModel?
    var navBarTopAnchor: NSLayoutConstraint?

    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        view.autoresizingMask = .flexibleHeight
        view.bounces = false
        view.clipsToBounds = true
        return view
    }()
    
    lazy var cardView: CustomCardUIView = {
        let v  = CustomCardUIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.actionsView.updateLayout(for: .full)
        v.cardContainerView.layer.cornerRadius = 0.0
        v.setupView(data: cardModel ?? CardViewModel())
        return v
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.tableFooterView = UIView()
        tv.separatorStyle = .none
        tv.showsVerticalScrollIndicator = false
        tv.isScrollEnabled = false
        tv.contentInset = UIEdgeInsets(top:10, left: 0,bottom: 10,right: 0)
    }()
    
    lazy var btnButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 15
        btn.setBackgroundImage(UIImage(named: "black")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = .white
        btn.addTarget(self, action: #selector(self.closePressed), for: .touchUpInside)
        return btn
    }()
    
    @objc func closePressed(){
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: <#T##CGRect#>)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
