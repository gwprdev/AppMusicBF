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
            self.downloadButtom.centerXAnchor.constraint(equalTo: self.downloadView.centerXAnchor),
            self.downloadView.centerYAnchor.constraint(equalTo: self.downloadView.centerYAnchor),
            self.downloadButtom.widthAnchor.constraint(equalToConstant: 45),
            self.downloadButtom.heightAnchor.constraint(equalToConstant: 45),
            
            self.notInterestedButtom.centerXAnchor.constraint(equalTo: self.notInterestedView.centerXAnchor),
            self.notInterestedButtom.centerYAnchor.constraint(equalTo: self.notInterestedView.centerYAnchor),
            self.notInterestedButtom.widthAnchor.constraint(equalToConstant: 45),
            self.notInterestedButtom.heightAnchor.constraint(equalToConstant: 45),
            
            self.playButtom.centerXAnchor.constraint(equalTo: self.playView.centerXAnchor),
            self.playButtom.centerYAnchor.constraint(equalTo: self.playView.centerYAnchor),
            self.playButtom.widthAnchor.constraint(equalToConstant: 70),
            self.playButtom.heightAnchor.constraint(equalToConstant: 70),
            
            self.likeButtom.centerXAnchor.constraint(equalTo: self.likeView.centerXAnchor),
            self.likeButtom.centerYAnchor.constraint(equalTo: self.likeView.centerYAnchor),
            self.likeButtom.widthAnchor.constraint(equalToConstant: 45),
            self.likeButtom.heightAnchor.constraint(equalToConstant: 45),
            
            self.moreButtom.centerXAnchor.constraint(equalTo: self.moreView.centerXAnchor),
            self.moreButtom.centerYAnchor.constraint(equalTo: self.moreView.centerYAnchor),
            self.moreButtom.widthAnchor.constraint(equalToConstant: 45),
            self.moreButtom.heightAnchor.constraint(equalToConstant: 45),
        ])
    }
    
    
    public func updateLayout(for mode: ViewMode){
        if mode == .full{
            self.downloadView.isHidden = false
            self.moreView.isHidden = false
            self.stackView.addArrangedSubview(self.downloadView)
            self.stackView.addArrangedSubview(self.notInterestedView)
            self.stackView.addArrangedSubview(self.playView)
            self.stackView.addArrangedSubview(self.likeView)
            self.stackView.addArrangedSubview(self.moreView)
        }else{
            self.downloadView.isHidden = true
            self.moreView.isHidden = true
            self.stackView.removeArrangedSubview(self.downloadView)
            self.stackView.removeArrangedSubview(self.moreView)
        }
    }
}
