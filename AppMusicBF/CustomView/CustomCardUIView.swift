//
//  CustomCardUIView.swift
//  AppMusicBF
//
//  Created by Gilvan Wemerson on 19/09/22.
//

import UIKit

enum ViewMode{
    case full
    case card
}

class CustomCardUIView: UIView {
    //MARK: PROPRIEDADES
    var vmode:ViewMode?
    var containerLeadingConstraints:NSLayoutConstraint?
    var containerTopConstraints:NSLayoutConstraint?
    var containerTrailingConstraints:NSLayoutConstraint?
    var containerBottomConstraints:NSLayoutConstraint?
    var dataModel:CardViewModel?

    //MARK: ELEMENTOS
    //CardContainerView é o cara que vai receber todos os elementos.
    lazy var cardContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 30
        v.clipsToBounds = true
        v.layer.shadowOpacity = 1
        v.layer.shadowOffset = CGSize(width: 0, height: -2)
        v.layer.shadowRadius = 20
        return v
    }()
    
    //imagem sobre o card como um todo
    lazy var cardImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.backgroundColor = .black
       return img
    }()
    
    // view que escurece a imagem do card
    lazy var overlayView:UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        return v
    }()
    
    //bordas que fica sob a imagem de perfil
    
    // view que escurece a imagem do card
    lazy var profileBorderView:UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        v.layer.borderWidth = 1
        v.layer.borderColor = UIColor.white.cgColor
        v.layer.cornerRadius = 25
        return v
    }()
    
    
    //imagem do perfil
    lazy var cardProfilePicture: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.backgroundColor = .black
        img.clipsToBounds = true
        img.layer.cornerRadius = 20
       return img
    }()
    
    //botão de adicionar imagem do usuário
    lazy var addProfileImageButton: UIButton = {
        let btn: UIButton
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.setBackgroundImage(UIImage(named: "plus"), for: .normal)
        btn.layer.cornerRadius = 10
        
        return btn
    }()
    
    //categoria da musica
    lazy var cardCategoryTitleLabel: UILabel = {
    let l = UILabel()
    l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: 12,weight: .bold)
    l.textColor = .white
    return l
    }()
    
    //data categoria
    lazy var cardCategoryDateLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        l.textColor = .white
        return l
    }()
    
    //Título
    lazy var cardTitleLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: 31, weight: .bold)
        l.textAlignment = .center
        l.textColor = .white
        return l
    }()
    
    //Título
    lazy var cardDescriptionTitleLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        l.textAlignment = .center
        l.textColor = .white
        l.numberOfLines = 0
        return l
    }()
    
    //Like e tempo
    lazy var cardLikeTimeLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false

        return l
    }()
    
    init(viewMode:ViewMode, cardData:CardViewModel){
        let frame = CGRect.zero
        self.vmode = viewMode
        self.dataModel = cardData
        super.init(frame: frame)
        self.addSubViews()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        self.containerLeadingConstraints = cardContainerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30)
        self.containerLeadingConstraints?.isActive =    true
        
        self.containerTopConstraints = cardContainerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15)
        self.containerTopConstraints?.isActive =    true
        
        self.containerBottomConstraints = cardContainerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30)
        self.containerBottomConstraints?.isActive =    true
        
        self.containerTrailingConstraints = cardContainerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        self.containerTrailingConstraints?.isActive =    true
        
        self.overlayView.pin(to: self.cardContainerView)
        self.cardImage.pin(to: self.cardContainerView)
        
        
        NSLayoutConstraint.activate([
            self.profileBorderView.topAnchor.constraint(equalTo: self.cardContainerView.topAnchor, constant: 60),
            self.profileBorderView.centerXAnchor.constraint(equalTo: self.cardContainerView.centerXAnchor),
            self.profileBorderView.widthAnchor.constraint(equalToConstant: 50),
            self.profileBorderView.heightAnchor.constraint(equalToConstant: 50),
            
            self.addProfileImageButton.trailingAnchor.constraint(equalTo: self.profileBorderView.trailingAnchor,constant: 4),
            self.addProfileImageButton.bottomAnchor.constraint(equalTo: self.profileBorderView.bottomAnchor,constant: 4),
            self.addProfileImageButton.widthAnchor.constraint(equalToConstant: 20),
            self.addProfileImageButton.heightAnchor.constraint(equalToConstant: 20),
            
            self.cardProfilePicture.centerXAnchor.constraint(equalTo: self.profileBorderView.centerXAnchor),
            self.cardProfilePicture.centerYAnchor.constraint(equalTo: self.profileBorderView.centerYAnchor),
            self.cardProfilePicture.widthAnchor.constraint(equalToConstant: 40),
            self.cardProfilePicture.heightAnchor.constraint(equalToConstant: 40),
            
            self.cardCategoryTitleLabel.topAnchor.constraint(equalTo: self.profileBorderView.bottomAnchor, constant: 10),
            self.cardCategoryTitleLabel.centerXAnchor.constraint(equalTo: self.cardContainerView.centerXAnchor),
            
            self.cardCategoryDateLabel.topAnchor.constraint(equalTo: self.cardCategoryTitleLabel.bottomAnchor, constant: 5),
            self.cardCategoryDateLabel.centerXAnchor.constraint(equalTo: self.cardContainerView.centerXAnchor),
            
            self.cardTitleLabel.topAnchor.constraint(equalTo: self.cardCategoryDateLabel.bottomAnchor, constant: 20),
            self.cardTitleLabel.leadingAnchor.constraint(equalTo: self.cardContainerView.leadingAnchor, constant: 20),
            self.cardTitleLabel.trailingAnchor.constraint(equalTo: self.cardContainerView.trailingAnchor, constant: -20),
            
            self.cardLikeTimeLabel.topAnchor.constraint(equalTo: self.cardTitleLabel.bottomAnchor, constant: 10 ),
            self.cardLikeTimeLabel.centerXAnchor.constraint(equalTo: self.cardContainerView.centerXAnchor),
            
            self.cardDescriptionTitleLabel.topAnchor.constraint(equalTo: self.cardLikeTimeLabel.bottomAnchor,constant: 30),
            self.cardDescriptionTitleLabel.leadingAnchor.constraint(equalTo: self.cardContainerView.leadingAnchor, constant: 40),
            self.cardDescriptionTitleLabel.trailingAnchor.constraint(equalTo: self.cardContainerView.trailingAnchor, constant: -40),
            
        ])
        
    }
    
    public func setupView(data: CardViewModel){
        self.cardCategoryTitleLabel.text = data.categoryName
        self.cardCategoryDateLabel.text = data.categoryDate
        self.cardTitleLabel.text = data.cardTitle
        self.cardLikeTimeLabel.attributedText = NSAttributedString.featureText(data.likeCount ?? "", data.duration ?? "")
        self.cardDescriptionTitleLabel.text = data.cardDescription
        self.cardImage.image = UIImage(named: data.cardImage ?? "")
        self.cardProfilePicture.image = UIImage(named: data.categoryImage ?? "")
    }
    
    private func addSubViews(){
        self.addSubview(self.cardContainerView)
        self.cardContainerView.addSubview(self.cardImage)
        self.cardContainerView.addSubview(self.overlayView)
        
        self.cardContainerView.addSubview(self.profileBorderView)
        self.cardContainerView.addSubview(self.cardProfilePicture)
        self.cardContainerView.addSubview(self.addProfileImageButton)
        
        self.cardContainerView.addSubview(self.cardCategoryTitleLabel)
        self.cardContainerView.addSubview(self.cardCategoryDateLabel)
        
        self.cardContainerView.addSubview(self.cardTitleLabel)
        self.cardContainerView.addSubview(self.cardLikeTimeLabel)
        
        self.cardContainerView.addSubview(self.cardDescriptionTitleLabel)
        
        self.updateLayout(for: vmode ?? .card)
        
    }
    
    private func updateLayout(for mode: ViewMode){
        if mode == .full{
            self.containerLeadingConstraints?.constant = 0
            self.containerTopConstraints?.constant = 0
            self.containerBottomConstraints?.constant = 0
            self.containerTrailingConstraints?.constant = 0
            self.cardDescriptionTitleLabel.isHidden = false
        }else{
            self.containerLeadingConstraints?.constant = 30
            self.containerTopConstraints?.constant = 15
            self.containerBottomConstraints?.constant = -30
            self.containerTrailingConstraints?.constant = -15
            self.cardDescriptionTitleLabel.isHidden = true
        }
    }
}
