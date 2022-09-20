//
//  CardTableViewCell.swift
//  AppMusicBF
//
//  Created by Gilvan Wemerson on 19/09/22.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    static let identifier:String = "CardTableViewCell"
    
    lazy var cardView:CustomCardUIView = {
        let v = CustomCardUIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.clipsToBounds = true
        return v
        
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
        self.setupConsraints()
        self.selectionStyle = .none
        
    }
    
    public func setupCell(data: CardViewModel){
        self.cardView.setupView(data: data)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView(){
        self.contentView.addSubview(self.cardView)
    }
    
    fileprivate func setupConsraints(){
        self.cardView.pin(to: self)
    }
    
}
