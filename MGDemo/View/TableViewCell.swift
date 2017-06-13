//
//  TableViewCell.swift
//  MGDemo
//
//  Created by Harry on 13/06/2017.
//  Copyright © 2017 harry. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    lazy var titleLabel: UILabel = {
        var titleLabel: UILabel = UILabel()
        self.contentView.addSubview(titleLabel)
        return titleLabel
    }()
    
    lazy var nameLabel: UILabel = {
        var nameLabel: UILabel = UILabel()
        self.contentView.addSubview(nameLabel)
        return nameLabel
    }()
    
    
    func setCell(title:String,background:UIColor,textColor:UIColor){
        let cellWidth:CGFloat = contentView.frame.size.width
        let cellHeight:CGFloat = contentView.frame.size.height
        titleLabel.frame = CGRect(x: 0, y: cellHeight/2 - 10, width:cellWidth , height: 20)
        titleLabel.setStyle(size: .giant, color: textColor)
        titleLabel.text = title
        titleLabel.textAlignment = .center
        backgroundColor = background

    }
    
    
    func setFirstCell(isInit:Bool,title:String){
        setCell(title: "A加载中...", background: .blue, textColor: .white)
        
        if !isInit {
            titleLabel.text = title
        }
    }
    
    func setSecondCell(isInit:Bool,title:String){
        setCell(title: "B加载中...", background: .orange, textColor: .white)
        if !isInit {
            titleLabel.text = title
        }
    }
    
    func setThirdCell(isInit:Bool,title:String){
        setCell(title: "C加载中...", background: .gray, textColor: .red)
        if !isInit {
            titleLabel.text = title
        }
    }
    
    func setFourthCell(isInit:Bool,title:String){
        setCell(title: "D加载完成", background: .yellow, textColor: .red)
        if !isInit {
            titleLabel.text = title
        }
    }
    
    
    func setFifthCell(isInit:Bool,title:String){
        setCell(title: "E加载失败", background: .black, textColor: .red)
        if !isInit {
            titleLabel.text = title
        }
    }
    
    


}
