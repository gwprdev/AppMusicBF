//
//  CardTableViewCell.swift
//  AppMusicBF
//
//  Created by Gilvan Wemerson on 19/09/22.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    static let identifier:String = "CardTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
