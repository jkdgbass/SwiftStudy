//
//  VAlignLabel.swift
//  SwiftStudy
//
//  Created by wjki on 2015. 7. 17..
//  Copyright (c) 2015년 AppDevelopGroup. All rights reserved.
//

import UIKit

enum SSTextAlignment {
	case SSTextAlignmentTop
	case SSTextAlignmentCenter
	case SSTextAlignmentBottom
}

/**
* subscript에 대해서 공부가 필요함...  구글에 검색하면서 썼는데.. 초기화도 공부해야함.
*/
class VAlignLabel: UILabel {

	private var textAlignmentVertical : SSTextAlignment
	
	required init(coder aDecoder: NSCoder) {
		textAlignmentVertical = SSTextAlignment.SSTextAlignmentCenter
		super.init(coder:aDecoder)
 	}
	
	override init(frame:CGRect) {
		textAlignmentVertical = SSTextAlignment.SSTextAlignmentCenter
		super.init(frame:frame)
	}
	
	init(valignment : SSTextAlignment)
	{
		textAlignmentVertical = valignment
		
		super.init(frame: CGRectZero)
	}

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code

		//우씨... if조건 하나 걸기 어렵네..
		if var txt : String = self.text {
			
			//기본 센터일때는 아무동작을 하지 않는다. (기본 지원)
			switch textAlignmentVertical
			{
			case .SSTextAlignmentBottom :

				//어이 야 너는 왜 . 으로 안나와서 헤매게 만드냐...
				var labelStringSize = txt.boundingRectWithSize(self.frame.size,
					options: NSStringDrawingOptions.UsesLineFragmentOrigin | NSStringDrawingOptions.UsesFontLeading,
					attributes: [NSFontAttributeName: self.font],
					context: nil).size

				// 오늘 하면서 제일 히트 상품...  CGFloat -> Float -> CGFloat ..... -_-
				var x = CGFloat(0)
				var y = self.frame.size.height - CGFloat(ceilf(Float(labelStringSize.height)))
				var w = CGFloat(ceilf(Float(CGRectGetWidth(self.frame))))
				var h = CGFloat(ceilf(Float(labelStringSize.height)))

				var textRect = CGRectMake(x, y, w, h)
				
				super.drawTextInRect(textRect)
				break
				
			case .SSTextAlignmentCenter :
				super.drawTextInRect(rect)
				break
				
			case .SSTextAlignmentTop :
				
				var labelStringSize = txt.boundingRectWithSize(self.frame.size,
					options: NSStringDrawingOptions.UsesLineFragmentOrigin | NSStringDrawingOptions.UsesFontLeading,
					attributes: [NSFontAttributeName: self.font],
					context: nil).size
				
				
				var x = CGFloat(0)
				var y = CGFloat(0)
				var w = CGFloat(ceilf(Float(CGRectGetWidth(self.frame))))
				var h = CGFloat(ceilf(Float(labelStringSize.height)))
				
				var textRect = CGRectMake(x, y, w, h)
				
				super.drawTextInRect(textRect)
				break
				
			default :
				
				break
			}
			
			
		}
		
    }

}
