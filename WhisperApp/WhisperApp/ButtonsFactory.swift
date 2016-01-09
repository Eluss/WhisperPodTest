import Foundation
import UIKit

class ButtonsFactory: NSObject {
 
    static func createButtonWithTitle(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, forState: .Normal)
        button.backgroundColor = UIColor.lightGrayColor()
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.layer.borderColor = UIColor.blackColor().CGColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        
        return button
    }

}