import UIKit

class NavigationBarController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.performSegue(withIdentifier: "first", sender: self)
    }
    
    @IBOutlet weak var container: UIView!
}
