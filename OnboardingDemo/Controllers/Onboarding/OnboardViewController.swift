//
//  OnboardViewController.swift
//  OnboardingDemo
//
//  Created by Rajeshkumar on 21/05/18.
//  Copyright © 2018 Rajeshkumar. All rights reserved.
//

import UIKit

import UIKit

//MARK: - controlOnboardDelegate
extension OnboardViewController : controlOnboardDelegate{
    func updatePageControl(index: Int) {
        pageControl.currentPage = index
        print("Update indecx",index)
    }
}
class OnboardViewController: UIViewController {
    
    //MARK: - IBOutlet Properties
    @IBOutlet weak var pageControl: UIPageControl!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Helper.shared.onboardDelegate = self
        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBAction
    @IBAction func continueAction(_ sender: UIButton) {
    }
    
    
}
