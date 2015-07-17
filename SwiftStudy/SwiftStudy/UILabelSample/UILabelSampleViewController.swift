//
//  UILabelSampleViewController.swift
//  SwiftSample
//
//  Created by  on 2015. 7. 11..
//  Copyright (c) 2015년 . All rights reserved.
//

import UIKit

class UILabelSampleViewController: UIViewController {

	override func loadView() {
		super.loadView()
		
		self.view.backgroundColor = UIColor.orangeColor()
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		self.title = "UILabel"
		
		var label : UILabel = UILabel.new()
		
		self.view.addSubview(label)
		
		label.backgroundColor = UIColor.redColor()
		label.textAlignment = NSTextAlignment.Center
		label.text = "center align"
		
		label.setTranslatesAutoresizingMaskIntoConstraints(false)
		
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[label]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["label" : label]))
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[label(40)]", options: NSLayoutFormatOptions(0), metrics: nil, views: ["label" : label]))
		
		
		
		var prevLabel = label
		label = UILabel.new()
		
		self.view.addSubview(label)
		
		label.backgroundColor = UIColor.orangeColor()
		label.textAlignment = NSTextAlignment.Right
		label.text = "text\nalign right"
		label.highlighted = false
		label.highlightedTextColor = UIColor.whiteColor()
		label.numberOfLines = 2
		label.font = UIFont.systemFontOfSize(10)
		
		label.setTranslatesAutoresizingMaskIntoConstraints(false)
		
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[label]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["label" : label]))
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[prevLabel][label(40)]", options: NSLayoutFormatOptions(0), metrics: nil, views: ["label" : label, "prevLabel":prevLabel]))
		
		
		
		//NSForegroundColorAttributeName : color
		var attributedText = NSMutableAttributedString(string: "text attribute")
		attributedText.addAttribute(NSForegroundColorAttributeName, value:UIColor.redColor(), range: NSMakeRange(0, 4));
		
		
		prevLabel = label
		label = UILabel()
		
		self.view.addSubview(label)
		
		label.backgroundColor = UIColor.yellowColor()
		label.textAlignment = NSTextAlignment.Left
		label.attributedText = attributedText
		label.highlighted = false
		label.highlightedTextColor = UIColor.whiteColor()
		
		label.setTranslatesAutoresizingMaskIntoConstraints(false)
		
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[label]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["label" : label]))
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[prevLabel][label(40)]", options: NSLayoutFormatOptions(0), metrics: nil, views: ["label" : label, "prevLabel":prevLabel]))
		
		
		
		
		prevLabel = label
		var topLabel :VAlignLabel = VAlignLabel(valignment: SSTextAlignment.SSTextAlignmentTop)
		
		self.view.addSubview(topLabel)
		
		topLabel.backgroundColor = UIColor.greenColor()
		topLabel.text = "top alignment\n 아오 그지 같다. 형변환."
		topLabel.textAlignment = NSTextAlignment.Center
		topLabel.numberOfLines = 2
		
		topLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
		
		self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[topLabel]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["topLabel":topLabel]))
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[prevLabel][topLabel(60)]", options: NSLayoutFormatOptions(0), metrics: nil, views: ["topLabel" : topLabel, "prevLabel":prevLabel]))
		
		
		
		var bottomLabel :VAlignLabel = VAlignLabel(valignment: SSTextAlignment.SSTextAlignmentBottom)
		
		self.view.addSubview(bottomLabel)
		
		bottomLabel.backgroundColor = UIColor.blueColor()
		bottomLabel.text = "bottom alignment\n 아오 그지 같다. 형변환."
		bottomLabel.textAlignment = NSTextAlignment.Center
		bottomLabel.numberOfLines = 2
		
		bottomLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
		
		self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[bottomLabel]|", options: NSLayoutFormatOptions(0), metrics: nil, views: ["bottomLabel":bottomLabel]))
		self.view .addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLabel][bottomLabel(60)]", options: NSLayoutFormatOptions(0), metrics: nil, views: ["topLabel" : topLabel, "bottomLabel":bottomLabel]))
				
		
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
}
