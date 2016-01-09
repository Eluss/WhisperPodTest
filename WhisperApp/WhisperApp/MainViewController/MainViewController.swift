import Foundation
import UIKit
import PureLayout
import Whisper

class MainViewController: UIViewController, MainViewDelegate {
    
    private var mainView: MainView!

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func loadView() {
        super.loadView()
        self.title = "Main"
        self.view.backgroundColor = UIColor.whiteColor()

        setupViewController()
    }

    private func setupViewController() {
        self.mainView = MainView()
        self.mainView.applyDelegate(self)
        self.view.addSubview(self.mainView)
        
        self.mainView.autoPinEdgesToSuperviewMarginsExcludingEdge(.Top)
        self.mainView.autoPinEdgeToSuperviewEdge(.Top, withInset: Dimensions.navigationBarHeight())
    }
    
    func mainView(mainView: MainView, didTapWhisperButton whisperButton: UIButton) {
        let message = Message(title: "Hi there!", color: UIColor.redColor())
        Whisper(message, to: self.navigationController!, action: .Show)
    }

    func mainView(mainView: MainView, didTapShoutButton shoutButton: UIButton) {
        let announcement = Announcement(title: "Shout test", subtitle: "Hello world!", image: UIImage(named: "avatar"))
        Shout(announcement, to: self)
    }
    
    func mainView(mainView: MainView, didTapWhistleButton whistleButton: UIButton) {
        let murmur = Murmur(title: "This is a small whistle...")
        Whistle(murmur)
    }


}
