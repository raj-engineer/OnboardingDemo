//
//  PageContentViewController.swift
//  OnboardingDemo
//
//  Created by Rajeshkumar on 21/05/18.
//  Copyright © 2018 Rajeshkumar. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    //MARK: - IBOutlet Properties
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var InstructionImageView: UIImageView!
    
    //MARK: - Properties
    var pageIndex: Int = 0
    var strTitle: String!
    var strDesc: String!
    var strColorName: UIColor!
    var image: UIImage!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelDescription.text = strDesc
        InstructionImageView.image = image
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Helper.shared.updateOnboardUI(index: pageIndex)
    }
    
    //MARK: - IBAction
    @IBAction func buttonAction(_ sender: UIButton) {
        print("Action")
    }
    
    
}

