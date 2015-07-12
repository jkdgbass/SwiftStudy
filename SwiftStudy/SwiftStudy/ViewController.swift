//
//  ViewController.swift
//  SwiftStudy
//
//  Created by DoHyoungKim on 2015. 7. 11..
//  Copyright (c) 2015년 AppDevelopGroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var buttonArea = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        var nameLabel = UILabel(frame: CGRectMake(20, 20, self.view.frame.size.width - 40, 30))
        nameLabel.textColor = UIColor.blackColor()
        nameLabel.text = "swift study application"
        nameLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(nameLabel)
        
        buttonArea = UIScrollView(frame: CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60))
        buttonArea.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)
        buttonArea.showsHorizontalScrollIndicator = false
        buttonArea.showsVerticalScrollIndicator = false
        self.view.addSubview(buttonArea)
		
		
		var btn : UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
		btn.backgroundColor = UIColor.orangeColor()
		btn.setTitle("click", forState: UIControlState.Normal)
		btn.frame = CGRectMake(0, 0, buttonArea.frame.size.width, 40)
		btn.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
		
		buttonArea.addSubview(btn)		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	//MARK: -
	func click(sender : UIButton!)
	{
		println("clicked")
	}

    // 창식 commit test
}

