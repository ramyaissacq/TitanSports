//
//  ProfileViewController.swift
//  Scoreo
//
//  Created by Remya on 11/11/22.
//

import UIKit

class ProfileViewController: BaseViewController {
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var backView2: UIView!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var imgPlayer: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblDob: UILabel!
    
    @IBOutlet weak var lblPlayerValue: UILabel!
    
    @IBOutlet weak var lblWeight: UILabel!
    
    @IBOutlet weak var lblHeight: UILabel!
    
    
    @IBOutlet weak var fixedName: UILabel!
    
    @IBOutlet weak var fixedCountry: UILabel!
    
    @IBOutlet weak var fixedDob: UILabel!
    
    @IBOutlet weak var fixedPlayerValue: UILabel!
    
    @IBOutlet weak var fixedHeight: UILabel!
    
    @IBOutlet weak var fixedWeight: UILabel!
    
    var player:Lineup?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSettings()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setNavBarColor(color: Colors.centreColor())
    }
    
    override func viewWillLayoutSubviews() {
        backView.roundCorners(corners: [.bottomLeft,.bottomRight], radius: 20)
        backView2.roundCorners(corners: [.bottomRight], radius: 40)
    }
    
    func initialSettings(){
        setupNavBar()
        setupView()
    }
    

    func setupNavBar(){
        self.navigationItem.titleView = getHeaderLabel(title: "Profile".localized)
        setBackButton()
    }
    
    func setupView(){
        fixedName.text = "Name".localized
        fixedCountry.text = "Country".localized
        fixedDob.text = "Date Of Birth".localized
        fixedPlayerValue.text = "Player Value".localized
        fixedHeight.text = "Height".localized
        fixedWeight.text = "Weight".localized
        if Utility.getCurrentLang() == "cn"{
            lblName.text = player?.playerNameChs
        }
        else{
            lblName.text = player?.playerNameEn
        }
        lblCountry.text = player?.playerCountry
        lblDob.text = player?.playerBirthday
        lblPlayerValue.text = player?.playerValue
        lblHeight.text = "\(player?.playerHeight ?? "") cm"
        lblWeight.text = "\(player?.playerWeight ?? "") kg"
        imgPlayer.setImage(with: player?.playerPhoto, placeholder: UIImage(named: "Player"))
        
    }
   

}
