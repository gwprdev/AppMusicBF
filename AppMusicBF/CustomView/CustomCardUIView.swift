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
}
