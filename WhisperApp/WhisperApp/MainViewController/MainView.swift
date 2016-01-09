import Foundation
import UIKit

protocol MainViewDelegate {
    func mainView(mainView: MainView, didTapWhisperButton whisperButton: UIButton)
    func mainView(mainView: MainView, didTapShoutButton shoutButton: UIButton)
    func mainView(mainView: MainView, didTapWhistleButton whistleButton: UIButton)
}

class MainView: UIView {
    
    private var delegate: MainViewDelegate?
    
    private var stackView : UIStackView!
    private var whisperButton : UIButton!
    private var shoutButton : UIButton!
    private var whistleButton : UIButton!
    
    init() {
        super.init(frame: CGRectZero)
        setupView()
        applyConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.stackView = StackViewFactory.createVerticalStackViewWithSpacing(20)
        
        self.whisperButton = ButtonsFactory.createButtonWithTitle("Whisper")
        self.whisperButton.addTarget(self, action: "whisperToMe:" , forControlEvents: .TouchUpInside)
        
        self.shoutButton = ButtonsFactory.createButtonWithTitle("Shout")
        self.shoutButton.addTarget(self, action: "shoutToMe:", forControlEvents: .TouchUpInside)
        
        self.whistleButton = ButtonsFactory.createButtonWithTitle("Whistler")
        self.whistleButton.addTarget(self, action: "whistleToMe:", forControlEvents: .TouchUpInside)
    }
    
    func whisperToMe(sender: UIButton) {
        self.delegate?.mainView(self, didTapWhisperButton: sender)
    }
    
    func shoutToMe(sender: UIButton) {
        self.delegate?.mainView(self, didTapShoutButton: sender)
    }
    
    func whistleToMe(sender: UIButton) {
        self.delegate?.mainView(self, didTapWhistleButton: sender)
    }

    private func applyConstraints() {
        self.addSubview(self.stackView)
        self.stackView.autoPinEdgesToSuperviewMarginsExcludingEdge(.Bottom)
        
        self.stackView.addArrangedSubview(self.whisperButton)
        pinView(self.whisperButton, toLeftRightWithInset: 20, andSetHeightTo: 60)
        
        self.stackView.addArrangedSubview(self.shoutButton)
        pinView(self.shoutButton, toLeftRightWithInset: 20, andSetHeightTo: 60)
        
        self.stackView.addArrangedSubview(self.whistleButton)
        pinView(self.whistleButton, toLeftRightWithInset: 20, andSetHeightTo: 60)
    }
    
    private func pinView(view: UIView, toLeftRightWithInset inset: CGFloat, andSetHeightTo height: CGFloat) {
        view.autoPinEdgeToSuperviewEdge(.Left, withInset: inset)
        view.autoPinEdgeToSuperviewEdge(.Right, withInset: inset)
        view.autoSetDimension(.Height, toSize: height)
    }

    
    func applyDelegate(mainDelegate: MainViewDelegate) {
        self.delegate = mainDelegate
    }
    
}
