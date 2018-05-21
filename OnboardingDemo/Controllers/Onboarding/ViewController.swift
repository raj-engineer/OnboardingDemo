//
//  ViewController.swift
//  OnboardingDemo
//
//  Created by Rajeshkumar on 21/05/18.
//  Copyright © 2018 Rajeshkumar. All rights reserved.
//


import UIKit

//MARK: - UIPageViewControllerDataSource
extension ViewController : UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        
        
        let pageContent: PageContentViewController = viewController as! PageContentViewController
        var index = pageContent.pageIndex
        
        if ((index == 0) || (index == NSNotFound))
        {
            return nil
        }
        index -= 1;
        return getViewControllerAtIndex(index: index)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        
        let pageContent: PageContentViewController = viewController as! PageContentViewController
        var index = pageContent.pageIndex
        
        
        if (index == NSNotFound)
        {
            return nil;
        }
        index += 1;
        if (index == arrPageTitle.count)
        {
            return nil;
        }
        return getViewControllerAtIndex(index: index)
    }
}

class ViewController: UIPageViewController  {
    
    //MARK: - Properties
    var arrPageTitle =  ["Lorem Ipsum is simply dummy text of the printing and typesetting industry.", "Lorem Ipsum is simply dummy text of the printing and typesetting industry.","Lorem Ipsum is simply dummy text of the printing and typesetting industry."];
    let pageArray:[UIImage] = [ #imageLiteral(resourceName: "Page1"), #imageLiteral(resourceName: "Page2"),#imageLiteral(resourceName: "Page3")]
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.setViewControllers([getViewControllerAtIndex(index: 0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        
    }
    
    
    
    //MARK: - Custom Action
    func getViewControllerAtIndex(index: NSInteger) -> PageContentViewController
    {
        // Create a new view controller and pass suitable data.
        let pageContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PageContentViewController
        
        pageContentViewController.strTitle = "\(index)"
        pageContentViewController.strDesc = "\(arrPageTitle[index])"
        
        let image:UIImage? = self.pageArray[index]
        pageContentViewController.image = image
        pageContentViewController.pageIndex = index
        
        return pageContentViewController
    }
}


