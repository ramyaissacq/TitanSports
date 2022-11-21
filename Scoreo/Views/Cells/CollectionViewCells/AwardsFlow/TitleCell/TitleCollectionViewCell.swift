//
//  TitleCollectionViewCell.swift
//  775775Sports
//
//  Created by Remya on 9/3/22.
//

import UIKit
enum TitleType{
    case Normal
    case GrayHeader
    case RedHeader
    case Header(color:UIColor)
    case Bold
}

class TitleCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblTitle:UILabel!
    
    //MARK: - Variables
    var titleType:TitleType?{
        didSet{
            setupTitle()
        }
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupTitle(){
        switch titleType{
        case .Normal:
            lblTitle.textColor = .black
            lblTitle.font = UIFont(name: "Prompt-Regular", size: 10)
        case .Bold:
            lblTitle.textColor = .black
            lblTitle.font = UIFont(name: "Prompt-Bold", size: 10)
        case .RedHeader:
            lblTitle.textColor = Colors.accentColor()
            lblTitle.font = UIFont(name: "Prompt-Black", size: 10)
        case .GrayHeader:
            lblTitle.textColor = UIColor(named: "gray5")
            lblTitle.font = UIFont(name: "Prompt-Black", size: 12)
        case .Header(let color):
            lblTitle.textColor = color
            lblTitle.font = UIFont(name: "Prompt-Black", size: 12)
          
        default:
            break
            
        
        }
    }

}
