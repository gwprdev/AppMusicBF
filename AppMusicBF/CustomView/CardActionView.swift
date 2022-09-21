//
//  CardActionView.swift
//  AppMusicBF
//
//  Created by Gilvan Wemerson on 20/09/22.
//

import UIKit

class CardActionView: UIView {
    lazy var stackView:UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        return sv
        
    }()
    
    lazy var downloadView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    lazy var notInterestedView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    lazy var playView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    lazy var likeView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    lazy var moreView:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    lazy var downloadButtom:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "download")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = .white
        btn.clipsToBounds = true
        return btn
    }()
    
    lazy var notInterestedButtom:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "restrict")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = .white
        btn.clipsToBounds = true
        return btn
    }()
    
    lazy var playButtom:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 35
        btn.setBackgroundImage(UIImage(named: "playBtn")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = .black
        btn.clipsToBounds = true
        return btn
    }()
    
    lazy var likeButtom:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "like")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = .white
        btn.clipsToBounds = true
        return btn
    }()
    
    lazy var moreButtom:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "more")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = .white
        btn.clipsToBounds = true
        return btn
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        self.addSubview(self.stackView)
        self.stackView.addArrangedSubview(self.notInterestedView)
        self.stackView.addArrangedSubview(self.playView)
        self.stackView.addArrangedSubview(self.likeView)
        
        self.downloadView.addSubview(self.downloadButtom)
        self.notInterestedView.addSubview(self.notInterestedButtom)
        self.playView.addSubview(self.playButtom)
        self.likeView.addSubview(self.likeButtom)
        self.moreView.addSubview(self.moreButtom)
    }
    
    
    private func setupConstraints(){
        self.stackView.pin(to: self)
        NSLayoutConstraint.activate([
        
        
        ])
    }
    
}
