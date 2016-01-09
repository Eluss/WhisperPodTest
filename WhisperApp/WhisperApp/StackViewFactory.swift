import Foundation
import UIKit

class StackViewFactory: NSObject {
    
    static func createVerticalStackViewWithSpacing(spacing: CGFloat) -> UIStackView {
        let stackView = UIStackView()
        stackView.distribution = .EqualSpacing
        stackView.alignment = .Center
        stackView.axis = .Vertical
        stackView.spacing = spacing
        return stackView
    }
    
}
