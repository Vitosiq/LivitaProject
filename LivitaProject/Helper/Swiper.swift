import SwiftUI
import UIKit

struct SwipeBackEnabler: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        Controller()
    }

    func updateUIViewController(
        _ uiViewController: UIViewController,
        context: Context
    ) {}

    private final class Controller: UIViewController {

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)

            navigationController?.interactivePopGestureRecognizer?.isEnabled = true
            navigationController?.interactivePopGestureRecognizer?.delegate = nil
        }
    }
}
