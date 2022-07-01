//
//  Тимешков Андрей Игоревич
// Lesson 1 Cource 2
//
// как получив координаты кнопки их использовать, не переприсвоив,
//

import UIKit

class EnterUAppVC: UIViewController {

    let dataBaseAppPeople = [
        "1" : "1"]
    
    @IBOutlet var ImageEnterUAppVC: UIImageView!
    
    @IBOutlet var LabelLoginEnterUAppVC: UILabel!
    @IBOutlet var LoginTextField: UITextField!
    
    @IBOutlet var LabelPasswordEnterUAppVC: UILabel!
    @IBOutlet var PasswordTextField: UITextField!
    
    @IBOutlet var ButtonEnterOutlet: UIButton!
    @IBOutlet var ButtonRegistrationOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ButtonRegistrationOutlet.isHidden = true
    }

    @IBAction func ButtonEnterRegistrationAction(_ sender: Any) {
        goToAppPage()
    }
    @IBAction func RegistrationActionButton(_ sender: Any) {
        goToRegistrationPage()
    }
}

extension EnterUAppVC {
    
    func goToRegistrationPage() {
        let viewController = Constants.StoryBoards.registrationStoryBoard.instantiateInitialViewController()
        if let viewController = viewController as? RegistrationVC {
            self.present(viewController, animated: true)
        }
    }
    
    func goToAppPage() {
        let tabBarController = Constants.StoryBoards.appTabBarStoryBoard.instantiateInitialViewController()
        if let tabBarController = tabBarController as? FaceTabBarController {
            tabBarController.modalPresentationStyle = .fullScreen
            self.present(tabBarController, animated: true)
            
        }
    }
}
