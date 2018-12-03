import UIKit

class NavigationSegue: UIStoryboardSegue {
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
    }

    override func perform() {
        let navigationBarControler = self.source as! NavigationBarController
        let destinationViewController = self.destination
        
        let subView = destinationViewController.view!
        let container = navigationBarControler.container!
        container.addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subView.leftAnchor.constraint(equalTo: container.leftAnchor),
            subView.rightAnchor.constraint(equalTo: container.rightAnchor),
            subView.topAnchor.constraint(equalTo: container.topAnchor),
            subView.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
    }
}
