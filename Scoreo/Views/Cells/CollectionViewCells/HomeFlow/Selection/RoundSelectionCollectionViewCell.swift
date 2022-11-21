//
//  RoundSelectionCollectionViewCell.swift
//  775775Sports
//
//  Created by Remya on 9/7/22.
//

import UIKit

class RoundSelectionCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var backView:UIView!
    @IBOutlet weak var lblTite:UILabel!
    
    override var isSelected: Bool{
        didSet{
            handleSelection()
        }
    }
    
    var unselectedViewColor = Colors.blue2Color()
    var selectedViewColor = Colors.blue3Color()
    var unselectedTitleColor = Colors.gray1Color()
    var selectedTitleColor = UIColor.white

    override func awakeFromNib() {
        super.awakeFromNib()
        backView.borderWidth = 0
        // Initialization code
    }
    
    func configureCell(unselectedViewColor:UIColor,selectedViewColor:UIColor,unselectedTitleColor:UIColor,selectedTitleColor:UIColor,title:String){
        self.unselectedViewColor = unselectedViewColor
        self.selectedViewColor = selectedViewColor
        self.unselectedTitleColor = unselectedTitleColor
        self.selectedTitleColor = selectedTitleColor
        handleSelection()
        lblTite.text = title
        
    }
    
    func handleSelection(){
        if isSelected{
            backView.backgroundColor = selectedViewColor
            lblTite.textColor = selectedTitleColor
            addShadow()
            
        }
        else{
            backView.backgroundColor = UIColor.clear//unselectedViewColor
            lblTite.textColor = unselectedTitleColor
            //removeShadow()
          
            //backView.addShadow(color: .lightGray)
            
        }
    }
    
    func addShadow(){
        self.backView.shadowColor = Colors.accentColor()
        self.backView.shadowOpacity = 1
        self.backView.shadowRadius = 1
    }
    
    func removeShadow(){
        self.backView.shadowOpacity = 0
        self.backView.shadowRadius = 0
        self.backView.shadowColor = .clear
    }

}
