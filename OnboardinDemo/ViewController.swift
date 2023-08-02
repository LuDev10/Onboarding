import UIKit
class ViewController: UIViewController {
    override func loadView() {
        self.view = OnboardingView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

