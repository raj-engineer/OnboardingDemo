//
//  Helper.swift
//  OnboardingDemo
//
//  Created by Rajeshkumar on 21/05/18.
//  Copyright © 2018 Rajeshkumar. All rights reserved.
//

import Foundation
protocol controlOnboardDelegate {
    func updatePageControl(index : Int)
    
}
class Helper {
    var page : Int = 0
    static let shared = Helper()
    private init(){}
    var onboardDelegate : controlOnboardDelegate?
    
    func updateOnboardUI(index : Int){
        self.onboardDelegate?.updatePageControl(index: index)
    }
}
