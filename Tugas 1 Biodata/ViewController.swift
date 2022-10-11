//
//  ViewController.swift
//  Tugas 1 Biodata
//
//  Created by Erlangga Anugrah Arifin on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var background: UIView!
    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var gelapText: UILabel!
    var checkIsDark = ColorScheme()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gelapText.isHidden = true
        gelapText.textColor = .white
    }

    @IBAction func viewDescriptionButton(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToDescriptionView", sender: self)
    }
    
    @IBAction func switchToggle(_ sender: UIButton) {
        if checkIsDark.isDark == false {
            roleLabel.textColor = .white
            nameLabel.textColor = .white
            background.backgroundColor = .black
            switchButton.setTitle("Switch Light Mode", for: .normal)
            gelapText.isHidden = false
            checkIsDark.isDark = true
        } else {
            roleLabel.textColor = .black
            nameLabel.textColor = .black
            background.backgroundColor = .white
            switchButton.setTitle("Switch Dark Mode", for: .normal)
            gelapText.isHidden = true
            checkIsDark.isDark = false
        }
    }
}

